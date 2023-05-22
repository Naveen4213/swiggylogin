import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 350),
                Row(
                  children: [
                    Text(
                      "Left Side Text",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      "assets/s2.png",
                      height: 200,
                    ),
                    SizedBox(height: 150),
                  ],
                ),
                // Other widgets and code go here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
