import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view_small.dart';

class AlphaPage extends StatelessWidget {
  const AlphaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const AlphaNodeView()
        : const AlphaNodeViewSmall();
  }
}
