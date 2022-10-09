import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/side_menu/locations_item.dart';
import 'package:nps_webapp/routing/routes.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import 'custom_text.dart';
import 'side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: .8, color: Colors.black),
        ),
      ),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  children: const [
                    Icon(Icons.info_outline),
                    Text(
                      "CONTEXT",
                      style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "The original division of Shockoe and the African Burial Ground caused by urban renewal and highway construction continues to resonate with negative environmental and health impacts. Pollution levels are likely to frequently be higher during typical conditions along I-95. Continuous monitoring at the African Burial Ground and other sites on and off I-95 can reveal how environmental impacts vary across Richmond and where action and resources to reduce those impacts are needed.",
                  // textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
