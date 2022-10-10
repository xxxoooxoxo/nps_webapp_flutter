import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/controllers/influx_controller_theta.dart';
import 'package:nps_webapp/models/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphCardSmall extends StatelessWidget {
  final controller;
  GraphCardSmall({Key? key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var influxController = Get.find<InfluxControllerTheta>();
    return Obx(() => Column(
          children: [
            Container(
              child: SfCartesianChart(
                legend:
                    Legend(isVisible: true, position: LegendPosition.bottom),
                primaryXAxis: DateTimeAxis(
                    labelStyle: const TextStyle(color: Colors.black),
                    majorGridLines: const MajorGridLines(
                      width: 1,
                      dashArray: [2, 3],
                    ),
                    autoScrollingMode: AutoScrollingMode.start),
                primaryYAxis: NumericAxis(
                  majorGridLines: const MajorGridLines(dashArray: [2, 3]),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                trackballBehavior: TrackballBehavior(
                  tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  tooltipSettings: const InteractiveTooltip(
                    color: Colors.black,
                    canShowMarker: false,
                    format: 'series.name : point.y',
                  ),
                ),
                series: [
                  LineSeries<ChartData, DateTime>(
                      color: Colors.blue,
                      name: "Temperature",
                      dataSource: influxController.dataListTemp.value,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  LineSeries<ChartData, DateTime>(
                      color: Colors.red,
                      name: "Humidity",
                      dataSource: influxController.dataListHumidty.value,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  LineSeries<ChartData, DateTime>(
                      color: Colors.orange,
                      name: "Particlate Matter (2.5)",
                      dataSource: influxController.dataListPM2_5.value,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  LineSeries<ChartData, DateTime>(
                      color: Colors.yellow,
                      name: "Particulate Matter (10)",
                      dataSource: influxController.dataListPM10.value,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  LineSeries<ChartData, DateTime>(
                      color: Colors.green,
                      name: "Sound",
                      dataSource: influxController.dataListSound.value,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                ],
              ),
              height: 300,
            ),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 14,
                        color: Colors.white,
                      ),
                      Text(
                        "Toggle measurements above",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
