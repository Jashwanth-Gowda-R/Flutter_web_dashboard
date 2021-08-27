import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

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
