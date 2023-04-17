import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  var _alignmentLogo1 = Alignment.topRight;
  var _alignmentLogo2 = Alignment.bottomLeft;
  void _changeAligment() {
    setState(
      () {
        _alignmentLogo1 = _alignmentLogo1 == Alignment.topRight
            ? Alignment.bottomLeft
            : Alignment.topRight;
        _alignmentLogo2 = _alignmentLogo2 == Alignment.topRight
            ? Alignment.bottomLeft
            : Alignment.topRight;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedAlign'),
        ),
        body: Stack(
          children: [
            AnimatedAlign(
              alignment: _alignmentLogo1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceOut,
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            AnimatedAlign(
              alignment: _alignmentLogo2,
              duration: const Duration(seconds: 3),
              curve: Curves.easeInCirc,
              child: const FlutterLogo(size: 50),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () => _changeAligment(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('INICIAR')),
            )
          ],
        ),
      ),
    );
  }
}
