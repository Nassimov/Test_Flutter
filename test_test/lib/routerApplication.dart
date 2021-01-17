import 'package:flutter/material.dart';
import 'package:test_test/FormTextFieldExemple.dart';
import 'package:test_test/TextField.dart';
import 'package:test_test/qfliteTest.dart';
import 'package:test_test/routing_constants.dart';
import 'package:test_test/testRouting.dart';
import 'myHomePage.dart';
import 'testRouting.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(
          builder: (context) =>
              MyHomePage(title: "Mon nouveau Titre de Flutter"));
    case TextFieldExampleRouting:
      return MaterialPageRoute(builder: (context) => TextFieldExample());
    case FestQflite:
      return MaterialPageRoute(builder: (context) => TestQflite());
    case FormTextFieldExampleRouting:
      return MaterialPageRoute(builder: (context) => TextFormFieldExample());

    case RoutingRoute:
      var routingParam = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => MyRoutingClass(
                title: routingParam,
              ));
    default:
      return MaterialPageRoute(
          builder: (context) =>
              MyHomePage(title: "Mon nouveau Titre de Flutter"));
      break;
  }
}
