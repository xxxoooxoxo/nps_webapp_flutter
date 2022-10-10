import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/controllers/influx_controller_alpha.dart';
import 'package:nps_webapp/controllers/influx_controller_beta.dart';
import 'package:nps_webapp/controllers/influx_controller_delta.dart';
import 'package:nps_webapp/controllers/influx_controller_epsilon.dart';
import 'package:nps_webapp/controllers/influx_controller_eta.dart';
import 'package:nps_webapp/controllers/influx_controller_gamma.dart';
import 'package:nps_webapp/controllers/influx_controller_iota.dart';
import 'package:nps_webapp/controllers/influx_controller_theta.dart';
import 'package:nps_webapp/controllers/influx_controller_zeta.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/alpha_page.dart';
import 'package:nps_webapp/views/overview/beta_page.dart';
import 'package:nps_webapp/views/overview/gamma_page.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view_small.dart';
import 'package:nps_webapp/views/overview/widgets/gamma_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/gamma_node_view_small.dart';
import 'package:nps_webapp/views/overview/widgets/humid_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/pm_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/sound_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/temp_gauge.dart';

class AllPage extends StatelessWidget {
  AllPage({Key? key}) : super(key: key);
  final controller1 = Get.find<InfluxControllerAlpha>();
  final controller2 = Get.find<InfluxControllerBeta>();
  final controller3 = Get.find<InfluxControllerGamma>();
  final controller4 = Get.find<InfluxControllerDelta>();
  final controller5 = Get.find<InfluxControllerEpsilon>();
  final controller6 = Get.find<InfluxControllerZeta>();
  final controller7 = Get.find<InfluxControllerEta>();
  final controller8 = Get.find<InfluxControllerTheta>();
  final controller9 = Get.find<InfluxControllerIota>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Container(
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
            ),
          ),
          GaugeRow(controller: controller1, width: width, title: "NODE 1"),
          GaugeRow(controller: controller2, width: width, title: "NODE 2"),
          GaugeRow(controller: controller3, width: width, title: "NODE 3"),
          GaugeRow(controller: controller4, width: width, title: "NODE 4"),
          GaugeRow(controller: controller5, width: width, title: "NODE 5"),
          GaugeRow(controller: controller6, width: width, title: "NODE 6"),
          GaugeRow(controller: controller7, width: width, title: "NODE 7"),
          GaugeRow(controller: controller8, width: width, title: "NODE 8"),
          GaugeRow(controller: controller9, width: width, title: "NODE 9")
        ],
      ),
    );
  }
}

class GaugeRow extends StatelessWidget {
  GaugeRow({
    Key? key,
    required this.controller,
    required this.width,
    required this.title,
  }) : super(key: key);

  var controller;
  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
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
        ],
      ),
    );
  }
}
