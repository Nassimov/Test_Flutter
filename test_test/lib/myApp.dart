import 'package:flutter/material.dart';
import 'package:test_test/routerApplication.dart' as router;
import 'package:test_test/testRouting.dart';
import 'myHomePage.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Mon Nouveau Titre',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
        //fontFamily: 'Pacifico'
      ),
    onGenerateRoute: router.generateRoute,
      
    );
    return materialApp;
  }
}


/*

      initialRoute: '/',
      routes:  {
      '/': (context) => MyHomePage(title: 'Mon nouveau Titre de Flutter'),
      '/second': (context) => MyRoutingClass(),
      },

 */