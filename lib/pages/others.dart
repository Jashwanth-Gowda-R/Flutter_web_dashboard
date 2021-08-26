import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/controllers/counterController.dart';
import 'package:get/get.dart';

class Other extends StatelessWidget {
  final CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
                'other screen was clicked! :${counterController.counter.value} times'),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('open Home page')),
          ),
        ],
      ),
    );
  }
}
