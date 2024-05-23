import 'package:assignments/facebook/screens/test_screen/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "screen1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                Screen2.routeName,
              );
            },
            child: Container(
              width: 500,
              height: 250,
              child: Text(
                "1",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
