import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/beta_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/beta_node_view_small.dart';

class BetaPage extends StatelessWidget {
  const BetaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const BetaNodeView()
        : const BetaNodeViewSmall();
  }
}
