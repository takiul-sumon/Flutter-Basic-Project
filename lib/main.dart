import 'package:flutter/material.dart';
import 'package:personal_expenses/buttons.dart';
import 'package:personal_expenses/stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: StackWidget(),
    );
  }
}
