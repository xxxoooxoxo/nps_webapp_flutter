// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/style.dart';
import '../helpers/responsive.dart';
import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsive.isSmallScreen(context)
          ? SizedBox()
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              }),
      title: Row(
        children: const [
          CustomText(
            text: "NETWORKED PUBLIC SPACE",
            color: dark,
            size: 16,
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: grey,
      elevation: 0,
      toolbarHeight: 70,
    );
