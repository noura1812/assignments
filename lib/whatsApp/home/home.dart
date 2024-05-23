import 'package:assignments/whatsApp/home/widgets/chat_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back),
          title: const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Person")
            ],
          ),
          actions: const [
            Icon(Icons.video_call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert_rounded),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              ChatWidget(
                message: "This is my First Message",
                image: "assets/images/person1.jpg",
                isSender: false,
              ),
              ChatWidget(
                message: "This is my second Message",
                image: "assets/images/person2.jpg",
                isSender: true,
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions),
                          suffixIcon: Icon(Icons.attach_file),
                          prefixIconColor: Colors.white,
                          suffixIconColor: Colors.white,
                          labelText: "Type a message...",
                          labelStyle: TextStyle(color: Colors.white),
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(25),
                          //     borderSide: BorderSide(color: Colors.white, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        color: Colors.black),
                    child: Icon(
                      Icons.mic,
                      size: 35,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
