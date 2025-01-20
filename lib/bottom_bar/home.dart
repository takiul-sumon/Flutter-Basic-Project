import 'package:flutter/material.dart';


class HomeScrean extends StatelessWidget{
   HomeScrean({super.key});
  @override
  Widget build(BuildContext context)
  {
    
    return Scaffold(
      appBar: AppBar(),
      body: Center(
      child: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("data")),

        ],
      )
      /*child:Text("TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON TAKIUL ISLAM SUMON",textAlign:TextAlign.left,style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize: 15 /*fontVariations:[FontVariation('', 10),]*/),
      maxLines: 1,overflow: TextOverflow.clip,)*/
    ),
    );
  }
}