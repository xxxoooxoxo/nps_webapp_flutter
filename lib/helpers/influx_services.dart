import 'package:influxdb_client/api.dart';
import '../models/chart_data.dart';

class DataServices {
  // initializng class definition
  static var bucket = 'NPS-Sensor-Data';
  static var org = 'NPS Sensornet';
  static var client = InfluxDBClient(
      url: 'https://europe-west1-1.gcp.cloud2.influxdata.com',
      token:
          'oGum6g8iML6ZmsY0yyzlcNv1jIXuUU_HHCxgS4Tqg9JpV3zlYITjxq7EfCfMvhuPfVcGCUQ_iLXhwmpG6Rf_9Q==',
      org: org,
      bucket: bucket);
  static var queryService = client.getQueryService();
  // defining function call to retrieve data

  static Future<int> getHumidity(node) async {
    var query = '''
    from(bucket: "NPS-Sensor-Data")
    |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
    |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
    |> filter(fn: (r) => r["_field"] == "value")
    |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
    |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/bme280/humidity")
    |> last()
    |> keep(columns: ["_value"])
''';
    var record = await queryService.query(query);
    var val = -1;
    await record.forEach((element) {
      val = element["_value"];
    });

    return val;
  }

  static Future<int> getPM10(node) async {
    var query = '''
    from(bucket: "NPS-Sensor-Data")
    |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
    |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
    |> filter(fn: (r) => r["_field"] == "value")
    |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
    |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/pmsaqi/pm10")
    |> last()
    |> keep(columns: ["_value"])
''';
    var record = await queryService.query(query);
    var val = -1;
    await record.forEach((element) {
      val = element["_value"];
    });

    return val;
  }

  static Future<int> getPM25(node) async {
    var query = '''
    from(bucket: "NPS-Sensor-Data")
    |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
    |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
    |> filter(fn: (r) => r["_field"] == "value")
    |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
    |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/pmsaqi/pm2_5")
    |> last()
    |> keep(columns: ["_value"])
''';
    var record = await queryService.query(query);
    var val = -1;
    await record.forEach((element) {
      val = element["_value"];
    });

    return val;
  }

  static Future<int> getSound(node) async {
    var query = '''
    from(bucket: "NPS-Sensor-Data")
    |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
    |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
    |> filter(fn: (r) => r["_field"] == "value")
    |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
    |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/mic/dBA")
    |> last()
    |> keep(columns: ["_value"])
''';
    var record = await queryService.query(query);
    var val = -1;
    await record.forEach((element) {
      val = element["_value"];
    });

    return val;
  }

  static Future<int> getTemp(node) async {
    var query = '''
    from(bucket: "NPS-Sensor-Data")
    |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
    |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
    |> filter(fn: (r) => r["_field"] == "value")
    |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
    |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/bme280/temp")
    |> last()
    |> keep(columns: ["_value"])
''';
    var record = await queryService.query(query);
    var val = -1;
    await record.forEach((element) {
      val = element["_value"];
    });

    return val;
  }

  static Future<ChartData> getChartData(node) async {
    ChartData data = ChartData(DateTime.now(), 0);
    var query = '''
      from(bucket: "NPS-Sensor-Data")
      |> range(start: -30s)
      |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
      |> filter(fn: (r) => r["_field"] == "value")
      |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
      |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/pmsaqi/pm2_5")
      |> last()
    ''';
    var records = await queryService.query(query);
    await records.forEach((record) {
      data = ChartData(DateTime.parse('${record['_time']}'),
          double.parse('${record['_value']}'));
    });
    return data;
  }

  static Future<List<ChartData>> fetchDataPM25(node) async {
    var dataList = <ChartData>[];
    var query = '''
      from(bucket: "NPS-Sensor-Data")
      |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
      |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
      |> filter(fn: (r) => r["_field"] == "value")
      |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
      |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/pmsaqi/pm2_5")
      |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
      |> yield(name: "mean")
    ''';
    var records = await queryService.query(query);
    await records.forEach((record) {
      dataList.add(ChartData(DateTime.parse('${record['_time']}'),
          double.parse('${record['_value']}')));
    });
    return dataList;
  }

  static Future<List<ChartData>> fetchDataPM10(node) async {
    var dataList = <ChartData>[];
    var query = '''
      from(bucket: "NPS-Sensor-Data")
      |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
      |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
      |> filter(fn: (r) => r["_field"] == "value")
      |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
      |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/pmsaqi/pm10")
      |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
      |> yield(name: "mean")
    ''';
    var records = await queryService.query(query);
    await records.forEach((record) {
      dataList.add(ChartData(DateTime.parse('${record['_time']}'),
          double.parse('${record['_value']}')));
    });
    return dataList;
  }

  static Future<List<ChartData>> fetchDataTemp(node) async {
    var dataList = <ChartData>[];
    var query = '''
      from(bucket: "NPS-Sensor-Data")
      |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
      |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
      |> filter(fn: (r) => r["_field"] == "value")
      |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
      |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/bme280/temp")
      |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
      |> yield(name: "mean")
    ''';
    var records = await queryService.query(query);
    await records.forEach((record) {
      dataList.add(ChartData(DateTime.parse('${record['_time']}'),
          double.parse('${record['_value']}')));
    });
    return dataList;
  }

  static Future<List<ChartData>> fetchDataHumidity(node) async {
    var dataList = <ChartData>[];
    var query = '''
      from(bucket: "NPS-Sensor-Data")
      |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
      |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
      |> filter(fn: (r) => r["_field"] == "value")
      |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
      |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/bme280/humidity")
      |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
      |> yield(name: "mean")
    ''';
    var records = await queryService.query(query);
    await records.forEach((record) {
      dataList.add(ChartData(DateTime.parse('${record['_time']}'),
          double.parse('${record['_value']}')));
    });
    return dataList;
  }

  static Future<List<ChartData>> fetchDataSound(node) async {
    var dataList = <ChartData>[];
    var query = '''
      from(bucket: "NPS-Sensor-Data")
      |> range(start: time(v: "2022-10-10T07:00:00.000Z"), stop: time(v:"2022-10-10T22:00:00.000Z"))
      |> filter(fn: (r) => r["_measurement"] == "mqtt_consumer")
      |> filter(fn: (r) => r["_field"] == "value")
      |> filter(fn: (r) => r["host"] == "nps-sensornet-broker")
      |> filter(fn: (r) => r["topic"] == "/esp32s3_$node/mic/dBA")
      |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
      |> yield(name: "mean")
    ''';
    var records = await queryService.query(query);
    await records.forEach((record) {
      dataList.add(ChartData(DateTime.parse('${record['_time']}'),
          double.parse('${record['_value']}')));
    });
    return dataList;
  }
}
