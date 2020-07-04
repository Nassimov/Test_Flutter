import 'package:flutter/material.dart';
import 'password.dart';
class GeneralWidget extends StatelessWidget {
  const GeneralWidget({
    Key key,
    @required this.pass,
  }) : super(key: key);

  final Password pass;

  @override
  Widget build(BuildContext context) {
      return Card(
          elevation: 2.0,
          child: Row(
          children: <Widget>[
            Text("${pass.context}"
            ),
            SizedBox(width:30.0),
              Text("${pass.password}"),
          ],
          )
          );
    }
}