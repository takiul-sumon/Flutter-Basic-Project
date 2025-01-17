import 'package:flutter/material.dart';
import 'package:personal_expenses/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,

      home: ButtomWidget(),
    );
  }
}
