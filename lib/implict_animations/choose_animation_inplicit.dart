import 'package:flutter/material.dart';

import 'animated_container_page.dart';
import 'animated_cross_fade_page.dart';
import 'animated_opacity_page.dart';

class ChooseAnimationInplicit extends StatefulWidget {
  const ChooseAnimationInplicit({Key? key}) : super(key: key);

  @override
  _ChooseAnimationInplicitState createState() =>
      _ChooseAnimationInplicitState();
}

class _ChooseAnimationInplicitState extends State<ChooseAnimationInplicit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animações Implicitas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AnimatedContainerPage()),
                );
              },
              child: const Text('AnimatedContainer'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AnimatedContainerPage()),
                );
              },
              child: const Text('AnimatedAlign'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AnimatedCrossFadePage()),
                );
              },
              child: const Text('AnimatedCrossFade'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AnimatedCrossFadePage()),
                );
              },
              child: const Text('AnimatedPadding'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AnimatedOpacityPage()),
                );
              },
              child: const Text('AnimatedOpacity'),
            ),
          ],
        ),
      ),
    );
  }
}
