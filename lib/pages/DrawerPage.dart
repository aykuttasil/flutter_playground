import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      body: Container(
        child: Text("Drawer Page"),
      ),
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text("Drawer Header"),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.orange],
              ),
            ),
          ),
          Text("Option 1"),
          Text("Option 2"),
        ],
      ),
    );
  }
}
