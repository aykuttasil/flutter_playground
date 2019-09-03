import 'package:flutter/material.dart';

class AnimatedBoxPage extends StatefulWidget {
  static const routeName = '/animatedBox';

  @override
  _AnimatedBoxPageState createState() => _AnimatedBoxPageState();
}

class _AnimatedBoxPageState extends State<AnimatedBoxPage> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedBoxPage"),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: _visible ? 0 : 1,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () => {
          setState(() {
            _visible = !_visible;
          })
        },
      ),
    );
  }
}
