import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const Responsive(
      {Key? key, required this.largeScreen, required this.smallScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > largeScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= mediumScreenSize) {
          return largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
