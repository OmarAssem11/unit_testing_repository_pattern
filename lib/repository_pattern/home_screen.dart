import 'package:flutter/material.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/api_manager.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/firebase_manager.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/posts_model.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/posts_repository.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var postsRepo = PostsRepositoryImpl(
    ApiManager(),
    FirebaseManager(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<PostModel>>(
        future: postsRepo.getPosts(),
        builder: (_, snapshot) {
          var posts = snapshot.data ?? [];
          return ListView.builder(
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Text(posts[index].body ?? ''),
              );
            },
            itemCount: posts.length,
          );
        },
      ),
    );
  }
}
