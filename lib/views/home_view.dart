// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nps_webapp/widgets/navigation_bar/navigation_bar.dart' as nav;

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        nav.NavigationBar(),
      ]),
    );
  }
}
