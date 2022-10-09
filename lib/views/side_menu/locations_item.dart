import 'package:flutter/material.dart';
import 'package:nps_webapp/constants/style.dart';
import 'package:nps_webapp/widgets/custom_text.dart';

class LocationsItem extends StatelessWidget {
  const LocationsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                        text: "Shockoe",
                        size: 22,
                        weight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "Richmond, Virginia",
                        size: 16,
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          color: dark,
                          borderRadius: BorderRadius.circular(200)),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Center(
                          child: CustomText(
                            text: "Selected",
                            size: 12,
                            color: Colors.white,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        color: blue1, borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const CustomText(
                    text: "online",
                    weight: FontWeight.w600,
                    size: 16,
                  ),
                  const Expanded(child: SizedBox()),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 25, 0),
                    child: Icon(
                      Icons.expand_less,
                      size: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
