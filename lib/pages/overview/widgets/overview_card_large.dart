import 'package:flutter/material.dart';
import 'package:nps_webapp/pages/overview/widgets/info_card.dart';

class OverviewCardsLarge extends StatelessWidget {
  const OverviewCardsLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Row(
        children: [
          InfoCard(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            topColor: Colors.orange,
            isActive: false,
          ),
          SizedBox(
            width: width / 64,
          ),
          InfoCard(
            title: "Past rides",
            value: "32",
            onTap: () {},
            topColor: Colors.green.shade300,
            isActive: false,
          ),
          SizedBox(
            width: width / 64,
          ),
          InfoCard(
            title: "Rides Pending",
            value: "23",
            onTap: () {},
            topColor: Colors.blueAccent,
            isActive: false,
          ),
          SizedBox(
            width: width / 64,
          ),
          InfoCard(
            title: "Rides Cancelled",
            value: "3",
            onTap: () {},
            topColor: Colors.red,
            isActive: false,
          ),
        ],
      ),
    );
  }
}
