import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BatAnimation extends StatelessWidget {
  BatAnimation({super.key});

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Lottie.asset(
        'assets/animations/flying_bat_animation.json',
        fit: BoxFit.fill,),
    );
  }
}
