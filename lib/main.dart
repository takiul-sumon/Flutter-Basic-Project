import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
child: Image.asset('assets/easy.jpg',fit: BoxFit.fill,),
        ),
        appBar: AppBar(

          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text("I am Rich",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}