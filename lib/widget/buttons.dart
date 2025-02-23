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
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 500,

            width: 300,
            child: GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 100,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
              ),
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                height: 50,width: 50,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

              shape: BoxShape.rectangle,
                  color: Colors.amber,
                ),
                child: Text('data${index}'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
