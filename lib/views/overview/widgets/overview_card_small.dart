import 'package:flutter/material.dart';
import 'package:nps_webapp/views/overview/widgets/graph_card_small.dart';
import 'package:nps_webapp/views/overview/widgets/humid_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/pm_gauge.dart';
import 'package:nps_webapp/views/overview/widgets/temp_gauge.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "THETA NODE",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TempGauge(),
          ),
          SizedBox(
            height: height / 64,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: HumidityGauge(),
          ),
          SizedBox(
            height: height / 64,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: PMGauge10(),
          ),
          SizedBox(
            height: height / 64,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: PMGauge25(),
          ),
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
