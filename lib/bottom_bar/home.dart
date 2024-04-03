import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_bar/widget.dart';


class HomeScrean extends StatelessWidget{
   HomeScrean({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(body: Center(
      child: Column(
        children: [
          Customwidget(text: "Home",),
          Customwidget(text: "Home 2",),
          Customwidget(text: "Home 3",),
          Customwidget(text: "Home 4",),

        ],
      )
      /*child:Text("TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON",textAlign:TextAlign.left,style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize: 15 /*fontVariations:[FontVariation('', 10),]*/),
      maxLines: 1,overflow: TextOverflow.clip,)*/
    ),
    );
  }
}