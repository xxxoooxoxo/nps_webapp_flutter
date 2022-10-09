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
          const Padding(
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
          Expanded(child: GraphCard()),
          SizedBox(
            height: width / 64,
          ),
          Row(
            children: [
              Expanded(child: TempGauge()),
              SizedBox(
                width: width / 64,
              ),
              const Expanded(child: HumidityGauge()),
              SizedBox(
                width: width / 64,
              ),
              const Expanded(child: SoundGauge()),
              SizedBox(
                width: width / 64,
              ),
              const Expanded(child: PMGauge10()),
              SizedBox(
                width: width / 64,
              ),
              const Expanded(child: PMGauge25()),
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
