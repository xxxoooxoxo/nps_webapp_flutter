import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/controllers/influx_controller.dart';
import 'package:nps_webapp/models/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphCard extends StatelessWidget {
  GraphCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var influxController = Get.find<InfluxController>();
    return Obx(() => Expanded(
          flex: 4,
          child: Container(
            child: SfCartesianChart(
              legend: Legend(isVisible: true, position: LegendPosition.left),
              primaryXAxis: DateTimeAxis(
                  labelStyle: const TextStyle(color: Colors.black),
                  majorGridLines: const MajorGridLines(
                    width: 1,
                    dashArray: [2, 3],
                  ),
                  autoScrollingMode: AutoScrollingMode.start),
              primaryYAxis: NumericAxis(
                maximum: 100,
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
                  canShowMarker: false,
                  format: 'series.name : point.y',
                ),
              ),
              series: [
                LineSeries<ChartData, DateTime>(
                    color: Colors.black,
                    name: "Temperature",
                    dataSource: influxController.dataListTemp.value,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    color: Colors.black,
                    name: "Humidity",
                    dataSource: influxController.dataListHumidty.value,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    color: Colors.black,
                    name: "Particlate Matter (2.5)",
                    dataSource: influxController.dataListPM2_5.value,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    color: Colors.black,
                    name: "Particulate Matter (10)",
                    dataSource: influxController.dataListPM10.value,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    color: Colors.black,
                    name: "Sound",
                    dataSource: influxController.dataListSound.value,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
              ],
            ),
            color: Colors.white,
            height: 300,
          ),
        ));
  }
}
