import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/data/AppDio.dart';
import 'package:flutter_playground/models/AppState.dart';
import 'package:flutter_playground/pages/AnimateListPage.dart';
import 'package:flutter_playground/pages/AnimatedBoxPage.dart';
import 'package:flutter_playground/pages/AnimatedBuilderPage.dart';
import 'package:flutter_playground/pages/AnimatedContainerPage.dart';
import 'package:flutter_playground/pages/AnimationPage.dart';
import 'package:flutter_playground/pages/ClipPath.dart';
import 'package:flutter_playground/pages/FloatingAppBarPage.dart';
import 'package:flutter_playground/pages/GridViewPage.dart';
import 'package:flutter_playground/pages/HeroPage.dart';
import 'package:flutter_playground/pages/NavigateWithArgumentsPage.dart';
import 'package:flutter_playground/pages/PageRouteBuilder.dart';
import 'package:flutter_playground/pages/ProviderPage.dart';
import 'package:flutter_playground/routes/RotationRoute.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.8],
              colors: [
                Colors.cyan,
                Colors.white,
              ],
            ),
          ),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              RaisedButton(
                child: Text("Arguments Page"),
                onPressed: () => {
                  Navigator.pushNamed(
                    context,
                    NavigateWithArgumentsPage.routeName,
                    arguments: MyArguments("Title", "Sample message"),
                  )
                },
              ),
              RaisedButton(
                child: Text("Dynamic Created Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.yellow),
                        constraints: BoxConstraints.expand(),
                        child: Text("Aykut Asil"),
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
                  Navigator.of(context)
                      .push(_createRouteToPageRouteBuilderPage())
                },
              ),
              RaisedButton(
                child: Text("AnimationPage"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnimationPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("Provider Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProviderPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("AnimatedBuilder Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnimatedBuilderPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("AnimatedContainer"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnimatedContainerPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("GridView Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GridViewPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("FloatingAppBar Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FloatingAppBarPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("Hero Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HeroPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("ClipPath Page"),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ClipPathPage();
                  }))
                },
              ),
              RaisedButton(
                child: Text("ClipPath Page With Rotation Animation"),
                onPressed: () => {
                  Navigator.push(context, RotationRoute(page: ClipPathPage()))
                },
              ),
              RaisedButton(
                child: Text("AnimateList"),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AnimateListPage()))
                },
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appState.changeAppTheme(!appState.isDarkTheme);
          // getHttp();
          // Navigator.pushNamed(context, AboutPage.routeName);
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

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

void getHttp() async {
  try {
    Response response = await AppDio.get().get("http://www.google.com");
    print(response);
  } catch (e) {
    print(e);
  }
}
