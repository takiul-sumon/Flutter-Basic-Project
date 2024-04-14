/*

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/bottom_bar/home.dart';
import 'package:flutter_application_1/bottom_bar/menu.dart';
import 'package:flutter_application_1/bottom_bar/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex=0;


List<Widget> screans=[
  HomeScrean(),
  MenuScrean(),
  ProfileScrean()
];
  void ontaped(int index){
    setState(() {
      currentindex=index;
      print(index);
    });
  }


@override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 2,
      child: SafeArea(


        child: Scaffold(
          backgroundColor: Colors.pinkAccent,


          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            elevation: 50,
            bottom: TabBar(tabs: [
              Icon(Icons.home),
              Icon(Icons.menu)

            ],),


            leading: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Text("APP",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),),

            ),

            title: Text(
              'Takiul', style: TextStyle(fontWeight: FontWeight.w400),),
            centerTitle: true,
            actions: [

              Padding(
                  padding: const EdgeInsets.all(25),
                  child: Icon(Icons.access_alarm,)


              ),
            ],
          ),
          /* floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Text("+",style: TextStyle(fontWeight: FontWeight.w700)),
      backgroundColor: Colors.amberAccent,),*/
          body: TabBarView(children: [
             Icon(Icons.home)
          ],),

          //screans[currentindex],
          /*bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.black26,
        onTap: ontaped,
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined),label: 'menu'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'profile')
        ],
      ),*/
          bottomNavigationBar: BottomAppBar(
            height: 40,
            color: Colors.amber,
            child: Center(

              child: Row(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          currentindex = 0;
                        });
                      },
                      child: Icon(Icons.home)
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        currentindex = 1;
                      });
                    },
                    child: Icon(Icons.access_alarm_outlined),
                  ),


                  InkWell(
                    onTap: () {
                      setState(() {
                        currentindex = 2;
                      });
                    },
                    child: Icon(Icons.people),
                  ),

                ],
              ),
            ),
          ),
        ),


      )
  );
}



}
*/
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/bottom_bar/home.dart';
import 'package:flutter_application_1/bottom_bar/menu.dart';
import 'package:flutter_application_1/bottom_bar/profile.dart';
import 'package:flutter_application_1/custome_textfieldwidget.dart';
import 'package:flutter_application_1/widget/Inbox.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  int currenindex = 0;
  List<Widget> screans = [
    HomeScrean(),
    MenuScrean(),
    ProfileScrean()
  ];

  Ontapped(int index) {
    setState(() {
      currenindex = index;
    });
  }

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _scaffoldkey = GlobalKey<FormState>();
  String name = "";
  var arr = [
    'Japan',
    'China',
    'Indonesia',
    'South Korea',
    'Thailand',
    'Singapore'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black12,


        appBar: AppBar(

          backgroundColor: Colors.black12,

        ),
    body: Drawer(
      child:Padding(
        
        padding: const EdgeInsets.fromLTRB(5, 3, 10, 4),
        child: ListView(children: [
          // Container(
          //    child:  Column(
          //      children: [
          //        Text("Title",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
          //        Text("Subtext")
          //      ],
          //    )
          //
          // ),
          ListTile(
            title:  Text("Title",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            subtitle: Text("Subtext"),
          ),



          ListTile(
            title: Text("INBOX",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.inbox),
            onTap: (){
              Inbox();
              onTap

            },
          ),
          ListTile(
            title: Text("OUTBOX",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.outbox),

          ),
          ListTile(
            title: Text("FAVORITE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.favorite),
          ),
          ListTile(
            title: Text("Archive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.archive),
          ),
          ListTile(
            title: Text("Trash",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.restore_from_trash),
          ),
          ListTile(
            title: Text("Spam",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.dangerous_rounded),
          ),
          Divider(color: Colors.black38,),
          ListTile(
            subtitle: Text("Labels"),
          ),



          ListTile(
            title: Text("Family",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.bookmark),
          ),
          ListTile(
            title: Text("Friends",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.bookmark),

          ),
          ListTile(
            title: Text("Work",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            leading: Icon(Icons.bookmark),
          ),
          Divider(height: 1,
          color: Colors.black38,),
      ListTile(
        title: Text("Settings & Accounts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        leading: Icon(Icons.settings),

      )

        ],


        ),
      ),
    )





    // Column(
    //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text("Title",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
    //     ),
    //     Text(" Subtext"),
    //     Icon(Icons.inbox) ,Text("Inbox")
    //
    //   ],
    // )
    
      ),


    );
  }
}