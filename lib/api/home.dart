import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:personal_expenses/api/api_class.dart';
import 'package:http/http.dart' as http;

class HomepageApi extends StatelessWidget {
  HomepageApi({super.key});

  List<Comments> update_comments = [];

  Future<List<Comments>> getPostApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (var i in data) {
        update_comments.add(Comments.fromJson(i));
      }
      return update_comments;
    } else {
      return update_comments;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: update_comments.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Column(
                      children: [
                        Text(update_comments[index].id.toString()),
                        Text(update_comments[index].email.toString()),
                        Text(update_comments[index].body.toString()),
                      ],
                    ));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
