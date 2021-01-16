import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyRoutingClass extends StatefulWidget {
  MyRoutingClass({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyRoutingClassState createState() => _MyRoutingClassState();
}

class _MyRoutingClassState extends State<MyRoutingClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
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
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.keyboard_return),
                label: Text("Revenir en home")),
            SpinKitFoldingCube(
              color: Colors.black,
              size: 300.0,
            )
          ],
        ));
  }
}

/*






              ListView.builder(
                  itemCount:passwords.length ,
                 itemBuilder: (context, index){
                   print(passwords[index])
                   return GeneralWidget(
                pass: passwords[index], 
                delete:(){
                  setState(() {
                    passwords.remove(passwords[index]);
                  });
                }
                );
                 }
                 ),





 */
