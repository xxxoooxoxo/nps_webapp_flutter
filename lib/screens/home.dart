import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nps_webapp/controllers/counter_controller.dart';
import 'package:nps_webapp/screens/other.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks: ${counterController.counter.value}"),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const OtherScreen());
                },
                child: const Text("Change Screens"),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
