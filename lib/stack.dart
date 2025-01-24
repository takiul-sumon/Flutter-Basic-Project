import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                print('object');
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
