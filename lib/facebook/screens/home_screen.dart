import 'package:assignments/facebook/widgets/post_widget.dart';
import 'package:assignments/facebook/widgets/storie_widhet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: StorieWidget(),
                );
              },
            ),
          ),
          ListView.builder(
            primary: false,
            itemBuilder: (context, index) {
              return const PostWidget();
            },
          ),
        ],
      ),
    );
  }
}
