import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/AboutPage.dart';
import 'package:flutter_playground/pages/AnimatedBoxPage.dart';
import 'package:flutter_playground/pages/NavigateWithArgumentsPage.dart';
import 'package:flutter_playground/pages/PageRouteBuilder.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Arguments Page"),
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  NavigateWithArgumentsPage.routeName,
                  arguments: MyArguments("Sample Title", "Sample message"),
                )
              },
            ),
            RaisedButton(
              child: Text("Arguments Page 123"),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.yellow),
                      constraints: BoxConstraints.expand(),
                      child: Text("Aykut AaAAsil"),
                    ),
                  );
                }))
              },
            ),
            RaisedButton(
              child: Text("AnimatedBoxPage"),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AnimatedBoxPage();
                }))
              },
            ),
            RaisedButton(
              child: Text("PageRouteBuilderPage"),
              onPressed: () => {
                Navigator.of(context).push(_createRouteToPageRouteBuilderPage())
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AboutPage.routeName);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Route _createRouteToPageRouteBuilderPage() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) =>
          PageRouteBuilderPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.bounceInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
