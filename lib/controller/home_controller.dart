import 'dart:convert';
import 'package:flutter_api/model/post_models.dart';
import 'package:http/http.dart' as http;

Future<List<PostModel>> getUsers() async {
  List<PostModel> userdata = [];
  var baseUrl = 'https://jsonplaceholder.typicode.com/users/1/posts';
  var url = Uri.parse(baseUrl);
  var response = await http.get(url);
  var responsebody = jsonDecode(response.body);
  print(responsebody);
  for (var singleMap in responsebody) {
    userdata.add(PostModel.fromJson(singleMap));
  }
  return userdata;
}


















// Future getPost() async {
//     try {
//       print('getpost running');
//       var urlString = 'https://jsonplaceholder.typicode.com/users/1/posts';
//       final response = await http.get(Uri.parse(urlString));
//       if (response.statusCode == 200) {
//         print('201');
//         var responseBody = jsonDecode(response.body);
//         print(responseBody);
//         print('101');
//       } else {
//         print(response.statusCode);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }