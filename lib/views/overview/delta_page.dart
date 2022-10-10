import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/delta_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/delta_node_view_small.dart';

class DeltaPage extends StatelessWidget {
  const DeltaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const DeltaNodeView()
        : const DeltaNodeViewSmall();
  }
}
