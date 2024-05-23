import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  static const String routeName = "screen3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 500,
            height: 500,
            child: Text(
              "3",
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
