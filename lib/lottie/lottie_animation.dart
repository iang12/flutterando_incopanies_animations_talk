import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({Key? key}) : super(key: key);

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottie animations')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.network(
              'https://lottie.host/9b118298-4ad5-4d1d-afba-d54158e6f6ab/DubhksPjRE.json',
            ),
            const SizedBox(height: 20),
            Lottie.asset(
              'assets/animation_ll5ij329.zip',
              frameRate: FrameRate.max,
            ),
          ],
        ),
      ),
    );
  }
}
