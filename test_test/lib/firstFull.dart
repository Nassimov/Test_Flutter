import 'package:flutter/material.dart';
class MyFirstStFull extends StatefulWidget {
  @override
  _MyFirstStFullState createState() => _MyFirstStFullState();
}

class _MyFirstStFullState extends State<MyFirstStFull> {
  int _compter = 1;
  void multiple() {
    setState(() {
      _compter=_compter*2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          child: Text("$_compter"),
        ),
        FloatingActionButton(onPressed: multiple)
      ],
    );
  }
}
