import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 240,
              width: 188,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                      image: AssetImage('assets/easy.jpg'), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 32,
              child: Column(
                children: [
                  Chip(
                      label: Text(
                    'dta',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
                ],
              ),
            ),
            // Positioned(
            //   top: 40,
            //   left: 40,
            //   child: Container(
            //     height: 150,
            //     width: 150,
            //     color: Colors.green,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
