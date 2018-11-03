import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> _backButton() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text("Desejas sair da Aplicacao?"),
              actions: <Widget>[
                FlatButton(
                  child: new Text("Sim"),
                  onPressed: () => Navigator.pop(context, true),
                ),
                FlatButton(
                  child: new Text("Nao"),
                  onPressed: () => Navigator.pop(context, false),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backButton,
      child: Scaffold(
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                  "Flutter- Handle Back Button Pressed - WillPopScope Widget"),
            ),
          ),
        ),
      ),
    );
  }
}
