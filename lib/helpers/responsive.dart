import 'package:flutter/material.dart';

const int largeScreenSize = 1150;
const int mediumScreenSize = 673;
const int smallScreenSize = 360;

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const Responsive(
      {Key? key, required this.largeScreen, required this.smallScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 1150;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > smallScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= largeScreenSize) {
          return largeScreen;
        } else if (width <= smallScreenSize) {
          return largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
