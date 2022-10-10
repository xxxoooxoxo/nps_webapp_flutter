import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nps_webapp/constants/controllers.dart';
import 'package:nps_webapp/routing/routes.dart';

class NodeMapPage extends StatelessWidget {
  const NodeMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          isAntiAlias: true,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => navigationController.navigateTo(iotaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "IOTA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(thetaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "THETA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(etaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "ETA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(zetaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "ZETA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(epsilonPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "EPSILON",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(deltaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "DELTA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(gammaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "GAMMA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(betaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "BETA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => navigationController.navigateTo(alphaPageRoute),
            child: Container(
              width: 85,
              color: Colors.black,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "ALPHA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
