import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/epsilon_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/epsilon_node_view_small.dart';

class EpsilonPage extends StatelessWidget {
  const EpsilonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const EpsilonNodeView()
        : const EpsilonNodeViewSmall();
  }
}
