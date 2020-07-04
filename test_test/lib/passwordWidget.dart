import 'package:flutter/material.dart';
import 'password.dart';
import 'generalWidget.dart';
class Passwords extends StatefulWidget {
  @override
  _PasswordsState createState() => _PasswordsState();
}

class _PasswordsState extends State<Passwords> {
  /* 
  List<String>password=[
    "Nassimessi10",
    "Messixavi10",
    "Motdepasse10",
    "nassimessi10",
    "nassimessi"
  ];
  */
    List<Password>passwords=[
    Password(password: "Nassimessi", context: "Facebook"),
    Password(context:"Gmail" , password:"Motdepasse10")
    
      ];
    void add(){
      setState(() {
      this.passwords.add(Password(context: "FFF", password:"jaoijdza"));
        
      });
    }
        void clearAll(){
      setState(() {
      this.passwords.clear();
        
      });
    }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton.icon(onPressed: clearAll, icon: Icon(Icons.delete_forever), label: Text("All")),
        Row(
          children: <Widget>[
            FlatButton.icon(onPressed: add, icon: Icon(Icons.add), label: Text("Add Password")),
            Container(
              child: Column(
              children:passwords.map((e) => GeneralWidget(
                pass: e, 
                delete:(){
                  setState(() {
                    passwords.remove(e);
                  });
                }
                )
                ).toList() 
              )
              ),
          ],
        ),
      ],
    );
  }
}