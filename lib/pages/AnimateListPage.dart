import 'package:flutter/material.dart';
import 'package:flutter_playground/models/User.dart';

class AnimateListPage extends StatefulWidget {
  @override
  _AnimateListPageState createState() => _AnimateListPageState();
}

class _AnimateListPageState extends State<AnimateListPage> {
  var _userList = List<User>();
  var _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _userList = List<User>.generate(5, (index) {
      return User("aykuttasil$index", "aykuttasil$index@gmail.com");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 600,
              child: AnimatedList(
                key: _listKey,
                initialItemCount: _userList.length,
                itemBuilder:
                    (BuildContext context, int index, Animation animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Text(
                      _userList[index].userName,
                      style: Theme.of(context).textTheme.title,
                    ),
                  );

                  /*return SizeTransition(
                    sizeFactor: animation,
                    child: Card(
                      child: ListTile(
                          title: Text(
                        _userList[index].userName,
                        style: Theme.of(context).textTheme.display2,
                      )),
                    ),
                  );

                  
                   */
                },
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            RaisedButton(
              child: Text("Insert Item"),
              onPressed: () {
                _userList.add(User("aykut", "asil"));
                _listKey.currentState.insertItem(_userList.length - 1);
              },
            )
          ],
        ),
      ),
    );
  }
}
