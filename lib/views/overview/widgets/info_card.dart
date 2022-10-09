import 'package:flutter/material.dart';
import 'package:nps_webapp/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String? value;
  final Color? topColor;
  final bool isActive;
  final VoidCallback? onTap;

  const InfoCard(
      {Key? key,
      required this.title,
      this.value,
      this.topColor,
      required this.isActive,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 6),
                  color: lightGrey.withOpacity(0.1),
                )
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: topColor ?? active,
                      height: 5,
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$value\n",
                      style: TextStyle(
                          fontSize: 16, color: isActive ? active : lightGrey),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
