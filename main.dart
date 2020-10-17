import 'package:app/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Homepage'),
    ),
    body: new Container(
      margin: new EdgeInsets.only(
        top: 90.0
      ),
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Text('Welcome to this App!'),
          new FlatButton(
            child: new Text(
              'Logout'
            ),
            onPressed: () {
              appAuth.logout().then(
                  (_) => Navigator.of(context).pushReplacementNamed('/login')
              );
            }
          )
        ],
      ),
    ),
  );
}
