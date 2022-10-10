import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/zeta_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/zeta_node_view_small.dart';

class ZetaPage extends StatelessWidget {
  const ZetaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const ZetaNodeView()
        : const ZetaNodeViewSmall();
  }
}
