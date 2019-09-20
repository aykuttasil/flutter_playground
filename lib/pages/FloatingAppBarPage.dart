import 'package:flutter/material.dart';

class FloatingAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("FloatingAppBar Page"),
            flexibleSpace: Placeholder(),
            backgroundColor: Colors.cyan,
            expandedHeight: 200,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 100
            ),
          )
        ],
      ),
    );
  }
}
