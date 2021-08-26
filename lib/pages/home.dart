import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/controllers/counterController.dart';
import 'package:flutter_web_dashboard/pages/others.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('clicked! :${counterController.counter.value} ')),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(Other());
                },
                child: Text('open other page')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
