import 'package:flutter/material.dart';
import 'package:nps_webapp/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        text: "Clients Page",
      ),
    );
  }
}
