import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;
  String _text = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = IntTween(begin: 0, end: 17).animate(_controller)
      ..addListener(() {
        setState(() {
          _text = 'ANDROID DEVELOPER'.substring(0, _animation.value);
        });
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: const TextStyle(
        color: Colors.yellow,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
