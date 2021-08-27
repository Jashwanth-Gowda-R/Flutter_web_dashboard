import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
          )),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
