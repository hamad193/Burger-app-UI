import 'package:flutter/material.dart';
import 'package:flutter_burger_app/first-page.dart';
import 'package:flutter_burger_app/second-page.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: FirstPage(),
     );
   }
 }
