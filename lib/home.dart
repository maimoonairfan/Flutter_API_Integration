import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Covid_Api extends StatefulWidget {
  const Covid_Api({Key? key}) : super(key: key);

  @override
  State<Covid_Api> createState() => _Covid_ApiState();
}

class _Covid_ApiState extends State<Covid_Api> {
  getPost() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/1/posts');
    print('url');
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    print(responsebody[0]);

    return (response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[700],
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent[700],
          tooltip: 'Increment',
          onPressed: () async {
            print('btn press');
            await getPost();
          },
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
