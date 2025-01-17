import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.black),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              
              decoration: InputDecoration(
                fillColor: Colors.amber,
                  hintText: 'Enter Your Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero, gapPadding: 10)),
            ),
          )
        ],
      ),
    ));
  }
}
