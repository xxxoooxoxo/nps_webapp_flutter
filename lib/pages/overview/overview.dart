import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/pages/overview/widgets/overview_card_large.dart';
import 'package:nps_webapp/pages/overview/widgets/overview_card_medium.dart';
import 'package:nps_webapp/pages/overview/widgets/overview_card_small.dart';
import 'package:nps_webapp/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          (() => Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: Responsive.isSmallScreen(context) ? 56 : 6),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomText(
                        text: menuController.activeItem.value,
                        size: 36,
                        weight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )),
        ),
        Expanded(
          child: ListView(
            children: [
              if (Responsive.isLargeScreen(context))
                const OverviewCardsLarge()
              else if (Responsive.isMediumScreen(context))
                const OverviewCardsMedium()
              else
                const OverviewCardsSmall()
            ],
          ),
        )
      ],
    );
  }
}
