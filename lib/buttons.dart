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
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(child: Card(child: Icon(Icons.heat_pump_sharp),))
          ],
        ),
      ),
    );
  }
}
