import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF080033),
      body: CircularParticle(
        width: w,
        height: h,
        particleColor: Colors.white.withOpacity(.6),
        numberOfParticles: 150,
        speedOfParticles: 1.5,
        maxParticleSize: 7,
        awayRadius: 0,
        onTapAnimation: false,
        isRandSize: true,
        isRandomColor: false,
        connectDots: false,
        enableHover: false,
      ),
    );
  }
}