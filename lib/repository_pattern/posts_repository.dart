import 'package:unit_testing_repository_pattern/repository_pattern/api_manager.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/firebase_manager.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/posts_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getPosts();
}

class PostsRepositoryImpl extends PostsRepository {
  ApiManager remoteDataSource;
  FirebaseManager localDataSource;

  PostsRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<List<PostModel>> getPosts() async {
    var posts = await remoteDataSource.getPosts();
    localDataSource.cachePosts(posts);
    return posts;
  }
}
