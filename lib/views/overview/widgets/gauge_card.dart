import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeCard extends StatelessWidget {
  final String title;
  final String unit;

  const GaugeCard({Key? key, required this.title, required this.unit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Center(
            child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: SfRadialGauge(
                enableLoadingAnimation: true,
                axes: <RadialAxis>[
                  RadialAxis(
                      showLabels: false,
                      showTicks: false,
                      radiusFactor: 0.8,
                      minimum: 30,
                      maximum: 100,
                      axisLineStyle: const AxisLineStyle(
                          cornerStyle: CornerStyle.startCurve, thickness: 5),
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            angle: 90,
                            widget: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Text('72',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text(
                                    '°F',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                )
                              ],
                            )),
                        const GaugeAnnotation(
                          angle: 124,
                          positionFactor: 1.1,
                          widget: Text('30', style: TextStyle(fontSize: 14)),
                        ),
                        const GaugeAnnotation(
                          angle: 54,
                          positionFactor: 1.1,
                          widget: Text('100', style: TextStyle(fontSize: 14)),
                        ),
                      ],
                      pointers: const <GaugePointer>[
                        RangePointer(
                          value: 72,
                          width: 10,
                          pointerOffset: -2,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Color(0xFFF67280),
                          gradient: SweepGradient(colors: <Color>[
                            Color.fromARGB(255, 132, 118, 255),
                            Color(0xffa6d02d),
                          ], stops: <double>[
                            0.0,
                            0.75,
                          ]),
                        ),
                      ]),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  DateTime.now().toString(),
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        )),
        color: Colors.white,
        height: 250,
      ),
    );
  }
}
