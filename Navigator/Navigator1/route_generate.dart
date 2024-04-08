import 'package:flutter/material.dart';

onGenerateRoute: (settings) {
 // Handle '/'
 if (settings.name == '/') {
   return MaterialPageRoute(builder: (context) => HomeScreen());
 }
  // Handle '/details/:id'
 var uri = Uri.parse(settings.name);
 if (uri.pathSegments.length == 2 &&
     uri.pathSegments.first == 'details') {
   var id = uri.pathSegments[1];
   return MaterialPageRoute(builder: (context) => DetailScreen(id: id));
 }
  return MaterialPageRoute(builder: (context) => UnknownScreen());
},
