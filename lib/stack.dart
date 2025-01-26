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
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(59)),
                        backgroundColor: Color(0xff4D5652),
                        label: Text(
                          'Alley Palace',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                  ),
                  Chip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(59)),
                      backgroundColor: Color(0xff4D5652),
                      label: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(' 4.1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white))
                        ],
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
