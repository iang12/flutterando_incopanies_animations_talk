import 'package:flutter/material.dart';

class ChooseAnimationExplicit extends StatefulWidget {
  const ChooseAnimationExplicit({Key? key}) : super(key: key);

  @override
  State<ChooseAnimationExplicit> createState() =>
      _ChooseAnimationExplicitState();
}

class _ChooseAnimationExplicitState extends State<ChooseAnimationExplicit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animações Explicitas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {},
              child: const Text('Animated'),
            ),
          ],
        ),
      ),
    );
  }
}
