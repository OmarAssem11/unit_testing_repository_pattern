import 'dart:convert';

import 'package:unit_testing_repository_pattern/repository_pattern/posts_model.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<List<PostModel>> getPosts() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(uri);
    var responseBody = response.body;
    var jsonList = jsonDecode(responseBody) as List;
    List<PostModel> posts = [];
    jsonList.map((postJson) {
      var post = PostModel.fromJson(postJson);
      posts.add(post);
    }).toList();
    return posts;
  }
}
