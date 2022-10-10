import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/alpha_page.dart';
import 'package:nps_webapp/views/overview/beta_page.dart';
import 'package:nps_webapp/views/overview/gamma_page.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view_small.dart';
import 'package:nps_webapp/views/overview/widgets/gamma_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/gamma_node_view_small.dart';

class AllPage extends StatelessWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // GammaNodeViewSmall(),
        // AlphaNodeViewSmall(),
      ],
    );
  }
}
