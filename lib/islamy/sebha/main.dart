import 'package:assignments/islamy/sebha/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(DevicePreview(
  //   builder: (context) => MyApp(), // Wrap your app
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
