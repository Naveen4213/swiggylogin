import 'package:flutter/material.dart';
import 'package:swiggy/screen/phonenumber.dart';
import 'package:swiggy/screen/signup.dart';
import 'package:swiggy/screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: '/',
      routes: {
        '/': (context) => Signup(),
            //PhoneNumber(),
             //WelcomeScreen(),
        //'/': (context) => MyVerify(),
        //Phonesign(),
      },
    );
  }
}

