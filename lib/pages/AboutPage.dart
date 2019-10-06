import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Text("About"),
            buildX("Aykut"),
          ],
        ),
      ),
    );
  }

  Widget buildX(String ad, {String soyad = "asil"}) {
    return Container();
  }
}
