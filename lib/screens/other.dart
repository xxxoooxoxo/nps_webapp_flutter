import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/controllers/counter_controller.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "The Screen was clicked ${counterController.counter.value} times hehehe"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Change Screens"),
            )
          ],
        ),
      ),
    );
  }
}
