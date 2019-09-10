import 'package:flutter/material.dart';
import 'package:flutter_playground/main.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Provider Page"),
          ),
          body: Container(
            child: Text(appState.username ?? "aykut"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Provider.of<AppState>(context).changeUserName("Aykut Asil");
            },
          ),
        );
      },
    );
  }
}