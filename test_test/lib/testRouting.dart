import 'package:flutter/material.dart';
class MyRoutingClass extends StatefulWidget {
  @override
  _MyRoutingClassState createState() => _MyRoutingClassState();
}

class _MyRoutingClassState extends State<MyRoutingClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Titre routing"),
        centerTitle:true,
        backgroundColor:Colors.orangeAccent,
      ),
      //Scroll object ---
      /* 
      child: new CustomScrollView(
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      */
      body: Column(
      children: <Widget>[
        Text("Routing"),
        RaisedButton.icon(
          onPressed: (){
        Navigator.pop(context);
        }, 
        icon: Icon(Icons.keyboard_return), 
        label: Text("Revenir en home")
        )
      ],
    )
    );
  }
}