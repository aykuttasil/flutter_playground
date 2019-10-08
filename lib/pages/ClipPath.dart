import 'package:flutter/material.dart';

class ClipPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Image.network("http://www.aykutasil.com/img/aykut.png"),
          Text('Aykut Asil'),
        ],
      ),
    );
  }
}
