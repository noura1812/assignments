import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int counter = 0;
  List<String> prayers = [
    "سبحان الله",
    "الحمد الله",
    "الله اكبر",
  ];
  int curPrayer = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.10),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.09),
                child: Transform.rotate(
                  angle: angle,
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: () {
                        clickOnImage();
                      },
                      child: Image.asset(
                        "assets/images/body.png",
                        height: size.height * 0.20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.10),
                child: Image.asset(
                  "assets/images/head.png",
                  height: size.height * 0.10,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.07),
          const Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            width: size.width * 0.18,
            height: size.height * 0.08,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "$counter",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: size.height * 0.07),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 100),
            height: size.height * 0.07,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              prayers[curPrayer],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void clickOnImage() {
    angle += 5;

    if (counter == 30) {
      counter = 0;
      curPrayer++;
      curPrayer = curPrayer % 3;
    }

    counter++;

    setState(() {});
  }
}
