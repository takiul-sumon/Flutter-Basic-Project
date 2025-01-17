import 'package:flutter/material.dart';

class ButtomWidget extends StatefulWidget {
  const ButtomWidget({super.key});

  @override
  State<ButtomWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  print('object');
                },
                child: Card(
                  child: Text('data'),
                ),
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
                child: Text('data',style: TextStyle(color: Colors.black),),
                style:ElevatedButton.styleFrom(
backgroundColor: Colors.white,
                  //
foregroundColor: Colors.white,                 
                  // onPrimary: Colors.white,
                  shadowColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(20),
                  minimumSize: Size(100, 50),
                ),
              )
          ],
        ),
      ),
    );
  }
}
