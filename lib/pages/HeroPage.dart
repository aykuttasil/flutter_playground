import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Page"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HeroPageDetail();
          }));
        },
        child: Container(
          child: Hero(
            tag: "HeroImage",
            child: Image.network("https://picsum.photos/250?image=9"),
          ),
        ),
      ),
    );
  }
}

class HeroPageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Hero(
            tag: "HeroImage",
            child: Image.network("https://picsum.photos/250?image=9"),
          ),
        ),
      ),
    );
  }
}
