import 'package:assignments/facebook/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 4,
              ),
              Image.asset(
                "assets/icons/facebook.png",
                width: 40,
              ),
              const Spacer(
                flex: 3,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: "Email or Phone",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
              const Spacer(),
              const TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, HomeScreen.routeName, (route) => false);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
              const Spacer(
                flex: 4,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up for Facebook",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgotten Password?",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
