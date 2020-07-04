import 'package:flutter/material.dart';
import 'myHomePage.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Nouveau Titre',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Pacifico'
      ),
      home: MyHomePage(title: 'Mon nouveau Titre de Flutter'),
      
    );
  }
}