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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children:passwords.map((e) => GeneralWidget(pass: e)).toList() 
      )
      );
  }
}