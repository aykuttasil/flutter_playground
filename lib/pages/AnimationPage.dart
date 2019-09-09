import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  AnimationController _animationController;
  Animation _animation;
  Tween _tween = Tween(begin: 0, end: 1);

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
      ),
      body: Container(
        child: AnimatedPadding(
          padding: isVisible ? EdgeInsets.all(0) : EdgeInsets.all(100),
          duration: Duration(seconds: 1),
          child: Text("AnimationPage"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
      ),
    );
  }
}
