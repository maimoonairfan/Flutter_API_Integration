import 'package:flutter/material.dart';
import 'package:flutter_api/controller/home_controller.dart';
import 'package:flutter_api/model/post_models.dart';

class Covid_Api extends StatefulWidget {
  const Covid_Api({Key? key}) : super(key: key);

  @override
  State<Covid_Api> createState() => _Covid_ApiState();
}

class _Covid_ApiState extends State<Covid_Api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[700],
      ),
      body: FutureBuilder(
        future: getUsers(),
        builder:
            (BuildContext context, AsyncSnapshot<List<PostModel>> snapshot) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.grey,
                  title: Text(snapshot.data![index].title ?? "title not found"),
                  subtitle:Text('${snapshot.data![index].userId ?? "id not found"}'),
                );
              });
        },
      ),
    );
  }
}
