import 'package:assignments/facebook/screens/test_screen/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = "screen2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, Screen3.routeName);
            },
            child: Container(
              width: 500,
              height: 500,
              child: Text(
                "2",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
