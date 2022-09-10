import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/local_navigator.dart';
import 'package:nps_webapp/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: localNavigator(),
        ),
        const Expanded(
          child: SideMenu(),
        ),
      ],
    );
  }
}
