import 'package:flutter/material.dart';

import 'screens/contact_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: ContactScreen(),
    );
  }
}
