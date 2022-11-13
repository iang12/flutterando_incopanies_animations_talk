import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            height: isPressed ? 300 : 100,
            width: isPressed ? 300 : 100,
            color: Colors.blue,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            height: isPressed ? 300 : 100,
            width: isPressed ? 300 : 100,
            color: Colors.yellow,
            curve: Curves.bounceOut,
          ),
        ],
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
