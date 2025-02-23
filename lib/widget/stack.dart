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
              top: 140,
              left: 10,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(59)),
                        backgroundColor: Color(0xff4D5652),
                        label: const Text(
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
            Positioned(
              left: 120,top: 170,
                child: Container(
                    width: 40, // Circle size
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color of the circle
                      shape:
                          BoxShape.circle, // Ensures the container is circular
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          blurRadius: 6, // Softness of the shadow
                          offset: Offset(0, 3), // Shadow position
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon:const Icon(
                        Icons.favorite,
                        color: Colors.red, // Heart icon color
                        size: 20, // Icon size
                      ),
                      splashRadius: 24, // Reduces splash effect size
                    )))
          ],
        ),
      ),
    );
  }
}
