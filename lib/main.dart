import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/sign/presentation/widgets/signPage.dart';
import 'package:rife_ai/simpleBlocDelegate.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(
  MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: SignPage(
        canLogin: false,
      ),
      image: new Image.asset('assets/images/rifeai_logo@2x.png'),
      backgroundColor: marine_blue,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
     // onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}
