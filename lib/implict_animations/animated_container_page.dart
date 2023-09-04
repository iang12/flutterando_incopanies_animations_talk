import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: isPressed ? 100 : 100,
              width: isPressed ? 300 : 100,
              color: Colors.pink,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: isPressed ? 300 : 100,
              width: isPressed ? 300 : 100,
              color: Colors.green,
              curve: Curves.easeInOutBack,
            ),
          ],
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
