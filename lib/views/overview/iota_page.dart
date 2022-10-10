import 'package:flutter/material.dart';
import 'package:nps_webapp/helpers/responsive.dart';
import 'package:nps_webapp/views/overview/widgets/iota_node_view.dart';
import 'package:nps_webapp/views/overview/widgets/iota_node_view_small.dart';

class IotaPage extends StatelessWidget {
  const IotaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !Responsive.isSmallScreen(context)
        ? const IotaNodeView()
        : const IotaNodeViewSmall();
  }
}
