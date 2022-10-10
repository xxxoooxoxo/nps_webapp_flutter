import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, right: 20),
            child: DottedBorder(
              dashPattern: const [4, 4],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Row(
                      children: const [
                        Icon(Icons.info_outline),
                        Text(
                          "CONTEXT",
                          style: TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Text(
                      "The original division of Shockoe and the African Burial Ground caused by urban renewal and highway construction continues to resonate with negative environmental and health impacts. Pollution levels are likely to frequently be higher during typical conditions along I-95. Continuous monitoring at the African Burial Ground and other sites on and off I-95 can reveal how environmental impacts vary across Richmond and where action and resources to reduce those impacts are needed.",
                      // textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
