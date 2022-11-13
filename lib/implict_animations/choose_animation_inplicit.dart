import 'package:flutter/material.dart';
import 'package:flutterando_inconpanies_animations_talk/implict_animations/animated_padding_page.dart';

import 'animated_align_page.dart';
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
                  MaterialPageRoute(builder: (_) => const AnimatedAlignPage()),
                );
              },
              child: const Text('Animated Align'),
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
              child: const Text('Animated CrossFade'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const AnimatedPaddingPage()),
                );
              },
              child: const Text('Animated Padding'),
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
              child: const Text('Animated Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
