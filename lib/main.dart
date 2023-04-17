import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:anoko/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AnimatedSplashScreen(
          splash: Image.network('https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
          duration: 2000,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.white,
          nextScreen: const MyHomeApp()),
    );
  }
}
