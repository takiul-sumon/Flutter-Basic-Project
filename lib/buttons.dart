import 'package:flutter/material.dart';
import 'package:personal_expenses/bottom_bar/home.dart';

class ButtomWidget extends StatefulWidget {
  const ButtomWidget({super.key});

  @override
  State<ButtomWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: (
                  
                ) {
Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScrean()));

                  print('object');
                },
                child: Text('data'),
                style: ButtonStyle(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Card(
              child: Icon(Icons.heat_pump_sharp),
            )),
            IconButton(onPressed: () {}, icon: Text('data')),
            OutlinedButton(onPressed: () {}, child: Text('data')),
            TextButton(
              onPressed: () {},
              child: Text('data'),
              style: ButtonStyle(),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Text('data'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                decoration: BoxDecoration(
          color: Colors.white, // Button fill color
          borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'data',
                  style: TextStyle(color: Colors.black,
                  ),

                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                //
// foregroundColor: Colors.white,
                // onPrimary: Colors.white,
                shadowColor: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.amber, width: 2),
                ),
                padding: const EdgeInsets.all(8),
                minimumSize: Size(100, 50),
              ),
              clipBehavior: Clip.hardEdge,
            )
          ],
        ),
      ),
    );
  }
}
