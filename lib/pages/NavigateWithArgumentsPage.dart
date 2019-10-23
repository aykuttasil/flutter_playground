import 'package:flutter/material.dart';
import 'package:flutter_playground/common/AppTheme.dart';

class NavigateWithArgumentsPage extends StatelessWidget {
  static const routeName = '/argumentsPage';

  @override
  Widget build(BuildContext context) {
    final MyArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Arguments Page"),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Text(
              args.title,
              style: AppTheme.textTheme.body1,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Text(args.message),
          ],
        ),
      ),
    );
  }
}

class MyArguments {
  final String title;
  final String message;

  MyArguments(this.title, this.message);
}
