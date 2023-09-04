import 'package:flutter/material.dart';
import 'package:flutterando_inconpanies_animations_talk/implict_animations/choose_animation_inplicit.dart';

import 'explict_animations/explicit_animation_example.dart';
import 'hero/hero_pokemon.dart';
import 'hero/player_page.dart';
import 'lottie/lottie_animation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ChooseAnimationInplicit()),
                );
              },
              child: const Text('Animações Implicitas'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AnimationExplicitExample()),
                );
              },
              child: const Text('Animações Explicitas'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const FirstScreen()),
                );
              },
              child: const Text('Hero Pokemon'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PlayersList()),
                );
              },
              child: const Text('Hero'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LottieAnimation()),
                );
              },
              child: const Text('Lottie'),
            ),
          ],
        ),
      ),
    );
  }
}
