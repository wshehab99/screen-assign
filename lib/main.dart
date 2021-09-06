import 'package:flutter/material.dart';
import 'package:screens_asign/screens/login_screen.dart';
import 'package:screens_asign/screens/splach_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Assignment', home: SplachScreen());
  }
}
