import 'package:flutter/material.dart';

class NavigateWithArgumentsPage extends StatelessWidget {
  static const routeName = '/argumentsPage';

  @override
  Widget build(BuildContext context) {
    final MyArguments args = ModalRoute.of(context).settings.arguments;

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Text(args.title),
          Expanded(
            child: Container(),
          ),
          Text(args.message),
        ],
      ),
    );
  }
}

class MyArguments {
  final String title;
  final String message;

  MyArguments(this.title, this.message);
}
