import 'package:flutter/material.dart';
import 'package:nps_webapp/views/overview/widgets/graph_card.dart';
import 'package:nps_webapp/views/overview/widgets/humid_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/pm_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/sound_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/temp_gauge.dart';

class OverviewCardsLarge extends StatelessWidget {
  const OverviewCardsLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.0, left: 20),
            child: Text(
              "THETA NODE",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Row(
            children: [
              GraphCard(),
            ],
          ),
          SizedBox(
            height: width / 64,
          ),
          Row(
            children: [
              TempGauge(),
              SizedBox(
                width: width / 64,
              ),
              HumidityGauge(),
              SizedBox(
                width: width / 64,
              ),
              SoundGauge(),
              SizedBox(
                width: width / 64,
              ),
              PMGauge10(),
              SizedBox(
                width: width / 64,
              ),
              PMGauge25(),
            ],
          )
        ],
      ),
    );
  }
}
