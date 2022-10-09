import 'package:flutter/material.dart';
import 'package:nps_webapp/views/overview/widgets/graph_card.dart';
import 'package:nps_webapp/views/overview/widgets/graph_card_small.dart';
import 'package:nps_webapp/views/overview/widgets/humid_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/info_card.dart';
import 'package:nps_webapp/views/overview/widgets/pm_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/temp_gauge.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height - 70,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "THETA NODE",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          TempGauge(),
          SizedBox(
            height: height / 64,
          ),
          HumidityGauge(),
          SizedBox(
            height: height / 64,
          ),
          PMGauge10(),
          SizedBox(
            height: height / 64,
          ),
          PMGauge25(),
          SizedBox(
            height: height / 64,
          ),
          GraphCardSmall(),
          SizedBox(
            height: height / 64,
          ),
        ],
      ),
    );
  }
}
