import 'package:flutter/material.dart';
import 'package:assignments/islamy/sebha/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/bg3.png"),
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: HomePageBody(),
        ),
      ),
    );
  }
}
