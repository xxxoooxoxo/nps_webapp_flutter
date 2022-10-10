import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/controllers/influx_controller_gamma.dart';
import 'package:nps_webapp/views/overview/widgets/graph_card_small.dart';
import 'package:nps_webapp/views/overview/widgets/humid_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/pm_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/sound_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/temp_gauge.dart';

class GammaNodeViewSmall extends StatelessWidget {
  const GammaNodeViewSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final controller = Get.find<InfluxControllerGamma>();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                DottedBorder(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "NODE 3",
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
                          "BACK TO MAP",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TempGauge(
              controller: controller,
            ),
          ),
          SizedBox(
            height: height / 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: HumidityGauge(
              controller: controller,
            ),
          ),
          SizedBox(
            height: height / 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SoundGauge(
              controller: controller,
            ),
          ),
          SizedBox(
            height: height / 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: PMGauge10(
              controller: controller,
            ),
          ),
          SizedBox(
            height: height / 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: PMGauge25(
              controller: controller,
            ),
          ),
          SizedBox(
            height: height / 64,
          ),
          GraphCardSmall(controller: controller),
          SizedBox(
            height: height / 64,
          ),
        ],
      ),
    );
  }
}
