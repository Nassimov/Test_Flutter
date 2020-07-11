import 'package:flutter/material.dart';
import 'package:test_test/routing_constants.dart';
import 'package:test_test/testRouting.dart';
import 'myHomePage.dart';
import 'testRouting.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context)=>MyHomePage(title:"Mon nouveau Titre de Flutter"));
    case RoutingRoute:
      return MaterialPageRoute(builder: (context)=>MyRoutingClass());
    default:
      return MaterialPageRoute(builder: (context)=>MyHomePage(title:"Mon nouveau Titre de Flutter"));
      break;
  }
}
