import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img1.png",
                  height: 300,
                ),
                SizedBox(height: 20), // Added SizedBox for spacing
                Image.asset(
                  "assets/logo.png",
                  height: 150,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Never a better time than now to start ",
                  style: TextStyle(
                    fontSize: 18,
                    color:Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 13),
                const Text(
                  "Order food online",
                  style: TextStyle(
                    fontSize: 18,
                    color:Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
