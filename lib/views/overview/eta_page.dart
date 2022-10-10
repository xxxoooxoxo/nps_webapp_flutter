import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/eta_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/eta_node_view_small.dart';

class EtaPage extends StatelessWidget {
  const EtaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const EtaNodeView()
        : const EtaNodeViewSmall();
  }
}
