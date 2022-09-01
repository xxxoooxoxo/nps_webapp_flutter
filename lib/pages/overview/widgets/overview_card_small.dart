import 'package:flutter/material.dart';
import 'package:nps_webapp/pages/overview/widgets/info_card.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 400,
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          InfoCard(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            topColor: Colors.orange,
            isActive: false,
          ),
          SizedBox(
            height: height / 64,
          ),
          InfoCard(
            title: "Past rides",
            value: "32",
            onTap: () {},
            topColor: Colors.green.shade300,
            isActive: false,
          ),
          SizedBox(
            height: height / 64,
          ),
          InfoCard(
            title: "Rides Pending",
            value: "23",
            onTap: () {},
            topColor: Colors.blueAccent,
            isActive: false,
          ),
          SizedBox(
            height: height / 64,
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
