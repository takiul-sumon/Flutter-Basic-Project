// import 'package:contacts_service/contacts_service.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
//
// void main()
// {
//   runApp(Myapp());
// }
// class Myapp extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState()
//   {
//     return _Myappstate();
//   }
// }
// class _Myappstate extends State<Myapp> {
//   List <Contact> contacts= [];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // backgroundColor: Colors.black12,
//
//
//         appBar: AppBar(
//
//           backgroundColor: Colors.lightBlue,
//           title: Text("Contacts",style: TextStyle(color: Colors.white,),),
//           elevation: 30,
//           shadowColor: Colors.black,
//
//         ),
//
//
//
//         // GestureDetector(
//         //   child: Text("Bangladesh"),
//         //   onTap: (){
//         //     print(1+1);
//         //   },
//         // )
//
//
//
//
//
//         //     InkWell Widget
//         // Center(
//         //   child: InkWell(
//         //     onTap: (){
//         //   print("Beautiful");
//         //     },child: Container(
//         //     height: 100,
//         //     width: 100,
//         //     color: Colors.amberAccent,
//         //   ),
//         //   ),
//         // )
//
//         // Padding(
//         //   padding: const EdgeInsets.all(6),
//         //   child: ListView(
//         //     children: [
//         //       ListTile(
//         //         title: Text("Alma Christensen"),
//         //         subtitle: Text("alma.christensen@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("A",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //       ListTile(
//         //         title: Text("Sergio Hill"),
//         //         subtitle: Text("sergio.hill@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("S",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //       ListTile(
//         //         title: Text("Malo Gonzalez"),
//         //         subtitle: Text("malo.ginzalez@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("M",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //       ListTile(
//         //         title: Text("Miguel Owens"),
//         //         subtitle: Text("miguel.owens@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("M",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //
//         //       ListTile(
//         //         title: Text("Lilou Dumont"),
//         //         subtitle: Text("lilou.dumont@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("L",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //       ListTile(
//         //         title: Text("Ashley Stewart"),
//         //         subtitle: Text("ashley.stewart@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("A",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //       ListTile(
//         //         title: Text("Roman Zhang"),
//         //         subtitle: Text("Roman.zhang@example.com"),
//         //         leading: CircleAvatar(
//         //           child: Text("R",style: TextStyle(color: Colors.white),),backgroundColor: Colors.lightBlue,
//         //         ),
//         //       ),
//         //
//         //     ],
//         //   ),
//         // )
//
//
//       ),
//
//
//     );
//   }
// }








// State Management system

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/widget/nevigator.dart';
//
//  void main()
//  {
//    runApp(MyApp());
//  }
//  class MyApp extends StatelessWidget{
//    @override
//    Widget build(BuildContext  context){
//      return MaterialApp(
//        home: HomePage(),
//      );
//    }
//  }
//
//
//
//
//
// class Nevigator extends StatelessWidget{
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(
//
//       title: "Navigator",
//       home: Scaffold(
//         appBar: AppBar(title: Text("Homepage"),),
//         body: Center(
//           child: Column(
//             children: [
//               Text("Change Screan"),
//     ElevatedButton(
//     onPressed: (){
//   Navigator.push(context, MaterialPageRoute(builder: (context) {
//   return HomePage();
//   },));
//   },child: Icon(Icons.accessibility),
//     )
//
//               ,
//             ],
//           ),
//         )
//       ),
//
//     );
//   }
// }






//
//
//
//
//
// import 'package:flutter/material.dart';
//
//
//
// void main()
// {
//   runApp(Myapp());
// }
// class Myapp extends StatefulWidget{
//
//
//   @override
//   State<StatefulWidget> createState()
//   {
//     return _Myappstate();
//   }
// }
// class _Myappstate extends State<Myapp> {
//   // List <Contact> contacts= [];
//
//
//   var arrdata = [
//
//       {"Name":"takiul","age":"15"},
//   {"Name":"Islam","age":"20"},
//   {"Name":"Sumon","age":"36"}
// ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // backgroundColor: Colors.black12,
//
//
//         appBar: AppBar(
//
//           backgroundColor: Colors.lightBlue,
//           title: Text("Contacts", style: TextStyle(color: Colors.white,),),
//           elevation: 30,
//           shadowColor: Colors.black,
//
//
//         ),
//         body: Container(
//
//             child: ListView(
//                     children: arrdata.map((value){
//                       return ListTile(
//                         leading: Text(value['age'].toString()),
//                         title: Text(value['Name'].toString())
//                       );
//                     }
//                     ).toList(),
//                   )
//
//
//
//
//             ),
//
//
//
//
//
//       ),);
//   }
// }
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(name());
// }
// class name extends StatefulWidget {
//   const name({super.key});
//
//   @override
//   State<name> createState() => _nameState();
// }
//
// class _nameState extends State<name> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false
//       ,
//       home: Homepage(
//       ),
//     );
//
//   }
// }
// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//  body: Center(child: Container(child: Text("Homepage"),)),
//     );
//   }
// }