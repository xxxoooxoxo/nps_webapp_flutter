import 'package:flutter/material.dart';
import 'package:nps_webapp/pages/overview/widgets/activity_card.dart';
import 'package:nps_webapp/pages/overview/widgets/gauge_card.dart';
import 'package:nps_webapp/pages/overview/widgets/graph_card.dart';
import 'package:nps_webapp/pages/overview/widgets/info_card.dart';
import 'package:nps_webapp/pages/overview/widgets/measurements_card.dart';
import 'package:nps_webapp/pages/overview/widgets/recent_events_card.dart';

class OverviewCardsLarge extends StatelessWidget {
  const OverviewCardsLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 20, right: 60),
      child: Column(
        children: [
          Row(
            children: [
              ActivityCard(),
              SizedBox(width: width / 64),
              RecentEventsCard(),
            ],
          ),
          SizedBox(
            height: width / 64,
          ),
          Row(
            children: [
              MeasurementsCard(),
              SizedBox(
                width: width / 64,
              ),
              GraphCard(),
            ],
          ),
          SizedBox(
            height: width / 64,
          ),
          Row(
            children: [
              GaugeCard(),
              SizedBox(
                width: width / 64,
              ),
              GaugeCard(),
              SizedBox(
                width: width / 64,
              ),
              GaugeCard(),
              SizedBox(
                width: width / 64,
              ),
              GaugeCard(),
            ],
          )
        ],
      ),
    );
  }
}
