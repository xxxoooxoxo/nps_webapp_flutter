import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/theta_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/theta_node_view_small.dart';

class ThetaPage extends StatelessWidget {
  const ThetaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const ThetaNodeView()
        : const ThetaNodeViewSmall();
  }
}
