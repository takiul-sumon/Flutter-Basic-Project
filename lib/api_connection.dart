import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api_Connection extends StatefulWidget {
  const Api_Connection({super.key});

  @override
  State<Api_Connection> createState() => _Api_ConnectionState();
}

class _Api_ConnectionState extends State<Api_Connection> {
  List pro = [];
  bool isLoading = false;
  Future<void> fetchdata() async {
    setState(() {
      isLoading = true;
    });

    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      pro = jsonDecode(response.body);
    } else {
      throw Exception('failed');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Api Connection',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              child: isLoading
                  ? CircularProgressIndicator()
                  : ListTile(
                      leading: Container(
                        height: 20,
                        width: 20,
                        color: Colors.blue,
                        child: Image.network('${pro[0]["thumbnailUrl"]}'),
                      ),
                      title: Text('${pro[0]["title"]}'),
                      subtitle: Text('${pro[0]["title"]}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
            )
          ],
        ));
  }
}

class Product {
  String? name;
  int? price;
  int? qty;
  String? image;
  Product({this.name, this.price, this.qty, this.image});
}
