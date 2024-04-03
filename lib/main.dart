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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  class _Myappstate extends State<Myapp>{
   int currenindex=0;
List<Widget> screans=[
  HomeScrean(),
  MenuScrean(),
  ProfileScrean()
];
Ontapped(int index){
  setState(() {
    currenindex=index;
  });
}
TextEditingController nameController= TextEditingController();

    GlobalKey<FormState> _scaffoldkey=GlobalKey<FormState>();
String name="";

  @override
    Widget build(BuildContext context)
  {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black12,


        appBar: AppBar(

        backgroundColor: Colors.blue,
          leading: Icon(Icons.account_circle_sharp),
          centerTitle: true,
          title: Text("My App",style: TextStyle(fontWeight: FontWeight.w600)),
          actions: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Icon(Icons.accessibility_sharp),
                   )
                    ],
          elevation: 50,

        ),

        /*screans[currenindex]*/

        /*Center(child:

         Card(//margin: EdgeInsets.all(25),

            child:
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Sumon",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),

        )),
        ),*/

        body: Center(


        child: Form(
          key: _scaffoldkey,



          child: Column(


            children:  /* [
              Text(
                'Constant: ${nameController.text}',
              ),
              Text('Var char:${name}'),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  onChanged: (value){
                    setState(() {
                      name=value;
                    });
                  },
                  validator: (value){
                    if(value!.isEmpty)
                      return "Field is Empty";
                    if(value.length<8)
                      return "Less than 8";
                  },
                  decoration: InputDecoration(
                    // hintMaxLines: 3,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.teal,
                            width: 7,
                          )
                      ),

                      fillColor: Colors.pinkAccent,
                      filled: true,
                      prefix: Icon(Icons.accessibility),
                      suffix: Icon(Icons.add_call)

                  ),
                  keyboardType: TextInputType.number,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              InkWell(onTap: (){
                if(_scaffoldkey.currentState!.validate())
                 {
                   setState(() {
                     nameController.text=nameController.text;
                   });
                 }

              },
                child: Container(
                  height: 20,
                  width: 50,
                  color: Colors.pink,
                ),
              )







            ]
*/

           [


                  SizedBox(
                    height: 10,
                  ),

                  TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your name",

              ),
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Enter correct name";
                      }
                      else
                        return null;
                    }
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Phone",

                      ),
                      validator: (value) {
                        if (value!.isEmpty || !RegExp(r'^[+]*[0-9]{}+$').hasMatch(value!)) {
                          return "Enter correct phone";
                        }
                        else
                          return null;
                      }

                  ),


                  SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Email",
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !RegExp(r'^[\w-\.]([\w-]+\.)+$').hasMatch(value!)) {
                          return "Enter correct email";
                        }
                        else
                          return null;
                      }




                  ),
                  ElevatedButton(onPressed: (){
                    if(_scaffoldkey.currentState!.validate())
                    { setState(() {
                      nameController.text=nameController.text;
                    });
                    }
                    else
                      print(_scaffoldkey.toString());
                  }, child: Text("Sign up"),),
                  SizedBox(
                    height: 10,
                  ),




    ]
  ),







          ),
        )


          // child: TextField(),

        //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Icon(Icons.access_alarm_outlined),
        //       Icon(Icons.account_box_rounded),
        //       Icon(Icons.add_card_outlined)
        //     ],
        //   ),
        // )


   /*     floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("+"),),
        bottomNavigationBar: BottomNavigationBar(
          onTap: Ontapped,
          currentIndex: currenindex,


          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.propane),label: 'Profile')
          ],
        ),

*/

      ),
      );

  }
  }
  /*
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sumon"),

        ),
      ),
    );
  }

}*/