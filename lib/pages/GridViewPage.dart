import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Page"),
      ),
      body: Container(
        child: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
