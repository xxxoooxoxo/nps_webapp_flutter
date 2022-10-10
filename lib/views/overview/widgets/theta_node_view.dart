import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/views/overview/widgets/graph_card.dart';
import 'package:nps_webapp/views/overview/widgets/humid_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/pm_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/sound_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/temp_gauge.dart';

import '../../../constants/controllers.dart';
import '../../../controllers/influx_controller_theta.dart';

class ThetaNodeView extends StatelessWidget {
  const ThetaNodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final controller = Get.find<InfluxControllerTheta>();

    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 20),
            child: Row(
              children: [
                DottedBorder(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "THETA NODE",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  color: Colors.black,
                  child: GestureDetector(
                      onTap: () => navigationController.goBack(),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "CHANGE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          Expanded(child: GraphCard()),
          SizedBox(
            height: width / 64,
          ),
          Row(
            children: [
              Expanded(
                  child: TempGauge(
                controller: controller,
              )),
              SizedBox(
                width: width / 64,
              ),
              Expanded(
                  child: HumidityGauge(
                controller: controller,
              )),
              SizedBox(
                width: width / 64,
              ),
              Expanded(
                  child: SoundGauge(
                controller: controller,
              )),
              SizedBox(
                width: width / 64,
              ),
              Expanded(
                  child: PMGauge10(
                controller: controller,
              )),
              SizedBox(
                width: width / 64,
              ),
              Expanded(
                  child: PMGauge25(
                controller: controller,
              )),
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
