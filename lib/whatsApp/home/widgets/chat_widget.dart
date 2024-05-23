import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  String message;
  String image;
  bool isSender;
  ChatWidget(
      {required this.message, required this.image, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: isSender ? TextDirection.rtl : TextDirection.ltr,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(25),
          constraints: BoxConstraints(maxWidth: 280),
          decoration: BoxDecoration(
              color: isSender ? Colors.blue : Colors.green,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white, width: 1)),
          child: Text(message,
              style: TextStyle(fontSize: 18, color: Colors.white)),
        )
      ],
    );
  }
}
