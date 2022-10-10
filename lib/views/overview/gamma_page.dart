import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/gamma_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/gamma_node_view_small.dart';

class GammaPage extends StatelessWidget {
  const GammaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const GammaNodeView()
        : const GammaNodeViewSmall();
  }
}
