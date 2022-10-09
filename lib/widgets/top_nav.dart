// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../helpers/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: Responsive.isLargeScreen(context)
          ? SizedBox()
          : IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                key.currentState?.openDrawer();
              }),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: 70,
      title: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: GestureDetector(
          onTap: () {
            launch('https://www.networkedpublicspace.org');
          },
          child: Center(
            child: Row(
              children: [
                Text(
                  "NETWORKED PUBLIC SPACE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                Responsive.isLargeScreen(context)
                    ? Text(
                        "  |  NODE DASHBOARD",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                            fontSize: 16),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
