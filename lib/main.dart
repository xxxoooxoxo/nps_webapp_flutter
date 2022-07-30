import 'package:flutter/material.dart';
import 'package:influxdb_client/api.dart';
import 'package:nps_webapp/views/home_view.dart';

void main() async {
  var bucket = 'NPS-Sensor-Data';
  var org = 'NPS Sensornet';
  var client = InfluxDBClient(
      url: 'https://europe-west1-1.gcp.cloud2.influxdata.com',
      token:
          'RQYdBlOgBUF_GAmPmGISKB036ue8IJcvcphA6ND1ibNHa3FyvlElQB1g6yif_YcubMBwo1dtUykvWo0eu3dwLg==',
      org: org,
      bucket: bucket);
  var query = '''
  from(bucket: "NPS-Sensor-Data")
  |> range(start: -30d)
  |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
  |> filter(fn: (r) => r["topic"] == "/bigdot_shockhoe/sensor_1/pm2_5")
''';

  var queryService = client.getQueryService();
  var records = await queryService.query(query);
  await records.forEach((record) {
    print('${record['_time']}: ${record['_field']} = ${record['_value']}');
  });
  client.close();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NPS Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
