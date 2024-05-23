import 'package:flutter/material.dart';

class StorieWidget extends StatelessWidget {
  const StorieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/images/image.jpeg",
            height: 150,
          ),
        ),
        CircleAvatar(child: Icon(Icons.person, color: Colors.white)),
        Positioned(
          bottom: 10,
          left: 25,
          child: Text(
            "owner",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
