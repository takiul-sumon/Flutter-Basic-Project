
import 'dart:ui';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/bottom_bar/home.dart';
import 'package:flutter_application_1/bottom_bar/menu.dart';
import 'package:flutter_application_1/bottom_bar/profile.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return _Myappstate();
  }
}
class _Myappstate extends State<Myapp> {
  List <Contact> contacts= [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black12,


        appBar: AppBar(

          backgroundColor: Colors.lightBlue,
          title: Text("Contacts",style: TextStyle(color: Colors.white,),),
          elevation: 30,
          shadowColor: Colors.black,

        ),
        body: Padding(
          padding: const EdgeInsets.all(6),
          child: ListView(
            children: [
              ListTile(
                title: Text("Alma Christensen"),
                subtitle: Text("alma.christensen@example.com"),
                leading: CircleAvatar(
                  child: Text("A",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                title: Text("Sergio Hill"),
                subtitle: Text("sergio.hill@example.com"),
                leading: CircleAvatar(
                  child: Text("S",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                title: Text("Malo Gonzalez"),
                subtitle: Text("malo.ginzalez@example.com"),
                leading: CircleAvatar(
                  child: Text("M",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                title: Text("Miguel Owens"),
                subtitle: Text("miguel.owens@example.com"),
                leading: CircleAvatar(
                  child: Text("M",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),

              ListTile(
                title: Text("Lilou Dumont"),
                subtitle: Text("lilou.dumont@example.com"),
                leading: CircleAvatar(
                  child: Text("L",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                title: Text("Ashley Stewart"),
                subtitle: Text("ashley.stewart@example.com"),
                leading: CircleAvatar(
                  child: Text("A",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                title: Text("Roman Zhang"),
                subtitle: Text("Roman.zhang@example.com"),
                leading: CircleAvatar(
                  child: Text("R",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
                ),
              ),

            ],
          ),
        )

    
      ),


    );
  }
}