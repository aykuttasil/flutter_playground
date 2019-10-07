import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });

    _animation =
        Tween<double>(begin: 0, end: 100).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FadeWidget(
              animation: _animation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
            ),
            Container(
              color: Colors.blue,
              width: _animation.value,
              height: _animation.value,
              child: Text("Aykut"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
            _animationController.forward(from: 0.0);
            showAboutDialog(context: context);
          });
        },
      ),
    );
  }
}

class FadeWidget extends StatelessWidget {
  const FadeWidget({
    @required this.animation,
    @required this.child,
    Key key,
  })  : assert(animation != null),
        assert(child != null),
        super(key: key);

  final Animation<double> animation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
