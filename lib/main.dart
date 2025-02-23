import 'package:flutter/material.dart';
import 'package:personal_expenses/api/home.dart';
import 'package:personal_expenses/api_connection.dart';

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
        appBarTheme: const
         AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Api_Connection(),
    );
  }
}
