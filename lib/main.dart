import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/views/Welcome.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new WelcomeScreen(),
      image: new Image.asset('assets/images/rifeai_logo@2x.png'),
      backgroundColor: deepBlue,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}