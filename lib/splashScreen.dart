import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gym_management/intro_slider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/images/splash1.png'),
          const Text(
            'Gym Manager app',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),
          )
        ],
      ),
      nextScreen: IntroSlider(),
      splashIconSize: 400,
      backgroundColor: Colors.amberAccent.shade100,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}
