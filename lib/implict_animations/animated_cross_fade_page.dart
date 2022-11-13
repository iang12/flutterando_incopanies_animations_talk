import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  _AnimatedCrossFadePageState createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CrossFade'),
      ),
      body: Center(
        child: AnimatedCrossFade(
          crossFadeState:
              isPressed ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
          firstChild: const FlutterLogo(
            size: 170,
            style: FlutterLogoStyle.horizontal,
          ),
          secondChild: const FlutterLogo(
            size: 170,
            style: FlutterLogoStyle.stacked,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_outlined),
        onPressed: () {
          setState(
            () {
              isPressed = !isPressed;
            },
          );
        },
      ),
    );
  }
}
