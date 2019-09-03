import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {

  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: Center(
        child: Text("About"),
      ),
    );
  }
}
