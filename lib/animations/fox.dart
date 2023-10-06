import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// In this example we handle the animation fetch loading.

class Fox extends StatefulWidget {
  const Fox({super.key});

  @override
  State<Fox> createState() => _FoxState();
}

class _FoxState extends State<Fox> {
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    super.initState();

    _composition =
        AssetLottie('assets/animations/walking_fox_animation.json').load();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LottieComposition>(
      future: _composition,
      builder: (context, snapshot) {
        var composition = snapshot.data;
        if (composition != null) {
          return SizedBox(
              height: 150, width: 150, child: Lottie(composition: composition));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
