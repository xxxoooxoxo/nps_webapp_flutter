import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../controllers/influx_controller_theta.dart';

class PMGauge10 extends StatelessWidget {
  final controller;
  const PMGauge10({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InfluxControllerTheta>();
    return Obx(() => DottedBorder(
          dashPattern: const [4, 4],
          child: Container(
            child: Center(
                child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text('PM 10',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                ),
                Container(
                  height: 160,
                  width: 180,
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    axes: <RadialAxis>[
                      RadialAxis(
                          showLabels: false,
                          showTicks: false,
                          radiusFactor: 0.8,
                          minimum: 0,
                          maximum: 300,
                          axisLineStyle: const AxisLineStyle(
                              cornerStyle: CornerStyle.startCurve,
                              thickness: 5),
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                angle: 90,
                                widget: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                        controller.pm10.value == 0
                                            ? "Loading"
                                            : controller.pm10.value.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ],
                                )),
                            const GaugeAnnotation(
                                angle: 90,
                                positionFactor: .8,
                                widget: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text(
                                    'µg/m3',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )),
                            const GaugeAnnotation(
                              angle: 124,
                              positionFactor: 1.1,
                              widget: Text('0', style: TextStyle(fontSize: 14)),
                            ),
                            const GaugeAnnotation(
                              angle: 54,
                              positionFactor: 1.1,
                              widget:
                                  Text('300', style: TextStyle(fontSize: 14)),
                            ),
                          ],
                          pointers: <GaugePointer>[
                            RangePointer(
                              value: controller.pm10.value.toDouble(),
                              width: 8,
                              pointerOffset: -1,
                              cornerStyle: CornerStyle.startCurve,
                              color: Colors.black,
                            ),
                          ]),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Recorded: " + DateTime.now().toString(),
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    )),
              ],
            )),
            color: Colors.white,
          ),
        ));
  }
}

class PMGauge25 extends StatelessWidget {
  final controller;
  const PMGauge25({Key? key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InfluxControllerTheta>();
    return Obx(() => DottedBorder(
          dashPattern: const [4, 4],
          child: Container(
            child: Center(
                child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text('PM 2.5',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                ),
                Container(
                  height: 160,
                  width: 180,
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    axes: <RadialAxis>[
                      RadialAxis(
                          showLabels: false,
                          showTicks: false,
                          radiusFactor: 0.8,
                          minimum: 0,
                          maximum: 300,
                          axisLineStyle: const AxisLineStyle(
                              cornerStyle: CornerStyle.startCurve,
                              thickness: 5),
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                angle: 90,
                                widget: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                        controller.pm25.value == 0
                                            ? "Loading"
                                            : controller.pm25.value.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ],
                                )),
                            const GaugeAnnotation(
                                angle: 90,
                                positionFactor: .8,
                                widget: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text(
                                    'µg/m3',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )),
                            const GaugeAnnotation(
                              angle: 124,
                              positionFactor: 1.1,
                              widget: Text('0', style: TextStyle(fontSize: 14)),
                            ),
                            const GaugeAnnotation(
                              angle: 54,
                              positionFactor: 1.1,
                              widget:
                                  Text('300', style: TextStyle(fontSize: 14)),
                            ),
                          ],
                          pointers: <GaugePointer>[
                            RangePointer(
                              value: controller.pm10.value.toDouble(),
                              width: 8,
                              pointerOffset: -1,
                              cornerStyle: CornerStyle.startCurve,
                              color: Colors.black,
                            ),
                          ]),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Recorded: " + DateTime.now().toString(),
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    )),
              ],
            )),
          ),
        ));
  }
}
