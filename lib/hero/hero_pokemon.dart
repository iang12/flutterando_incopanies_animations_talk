import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First screen'),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'charizard',
            child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'),
          ),
          ElevatedButton(
            child: const Text('Go to next screen'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SecondScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'charizard',
          child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'),
        ),
      ),
    );
  }
}
