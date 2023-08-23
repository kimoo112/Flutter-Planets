import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planets/pages/start.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterSplashScreen.fadeIn(
            duration: const Duration(seconds: 7),
            backgroundColor: const Color(0xFFF4F4F2),
            defaultNextScreen: const StartScreen(),
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Lottie.asset('assets/animation_lklceh4m.json'),
                const SizedBox(height: 50),
                Text(
                  "Interstellar".toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFF161853),
                    fontSize: 24,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )));
  }
}
