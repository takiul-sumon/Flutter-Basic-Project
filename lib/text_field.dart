import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter your name',
          labelText: 'Name',
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            gapPadding: 10
          ),
        ),
      ),
    ));
  }
}
