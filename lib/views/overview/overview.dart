import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/overview_card_large.dart';
import 'package:nps_webapp/views/overview/widgets/overview_card_small.dart';
import 'package:nps_webapp/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              if (Responsive.isLargeScreen(context))
                const OverviewCardsLarge()
              else
                const OverviewCardsSmall()
            ],
          ),
        )
      ],
    );
  }
}
