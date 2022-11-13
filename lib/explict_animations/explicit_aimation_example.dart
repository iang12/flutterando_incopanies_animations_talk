import 'package:flutter/material.dart';

class AnimationExplicitExample extends StatefulWidget {
  const AnimationExplicitExample({super.key});

  @override
  _AnimationExplicitExampleState createState() =>
      _AnimationExplicitExampleState();
}

class _AnimationExplicitExampleState extends State<AnimationExplicitExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation _profilePictureAnimation;
  late Animation _contentAnimation;
  late Animation _listAnimation;
  late Animation _fabAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _profilePictureAnimation = Tween(begin: 0.0, end: 50.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.20, curve: Curves.easeOut),
      ),
    );
    _contentAnimation = Tween(begin: 0.0, end: 34.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.20, 0.40, curve: Curves.easeOut),
      ),
    );
    _listAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.40, 0.75, curve: Curves.easeOut),
      ),
    );
    _fabAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 1.0, curve: Curves.easeOut),
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, widget) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.supervised_user_circle),
                color: Colors.black,
                onPressed: () {},
                iconSize: _profilePictureAnimation.value,
              ),
            ],
            elevation: 0.0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 16.0),
                      Text(
                        "Bom dia",
                        style: TextStyle(
                            fontSize: _contentAnimation.value,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 18.0),
                      const Text(
                        "Veja suas tarefas para hoje",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Opacity(
                  opacity: _listAnimation.value,
                  child: ListView.builder(
                    itemBuilder: (context, position) {
                      return CheckboxListTile(
                        activeColor: const Color(0xFF6750A4),
                        title: Text("This is item $position"),
                        subtitle: const Text('Explore the far reaches '),
                        value: true,
                        onChanged: (val) {},
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: Transform.scale(
            scale: _fabAnimation.value,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF6750A4),
              child: const Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
