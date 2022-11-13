import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double topValue = 10;
  double bottomValue = 340;
  bool isTop = true;
  String actionOnTop = 'Cair';
  String actionOnBot = 'Pular';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: AnimatedPadding(
                duration: const Duration(seconds: 3),
                padding: EdgeInsets.only(top: topValue, bottom: bottomValue),
                curve: isTop ? Curves.bounceIn : Curves.bounceOut,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text(isTop ? actionOnTop : actionOnBot),
                onPressed: () {
                  setState(() {
                    isTop = !isTop;
                    topValue = isTop ? 10 : 340;
                    bottomValue = isTop ? 340 : 10;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
