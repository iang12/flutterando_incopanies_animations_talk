import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<StatefulWidget> createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State {
  var opacity = 0.0;
  var width = 230.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        title: const Text(" AnimatedOpacity "),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(
              () {
                opacity = opacity == 0.0 ? 1 : 0.0;
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.08,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.cyan[400],
            ),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 700),
              curve: Curves.bounceIn,
              opacity: opacity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FlutterLogo(size: 70),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Text(
                      'Flutter Devs',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}