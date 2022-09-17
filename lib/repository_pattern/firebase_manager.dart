import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unit_testing_repository_pattern/repository_pattern/posts_model.dart';

class FirebaseManager {
  CollectionReference<PostModel> getPostsCollection() =>
      FirebaseFirestore.instance.collection('posts').withConverter(
            fromFirestore: (snapshot, options) =>
                PostModel.fromJson(snapshot.data()!),
            toFirestore: (post, options) => post.toJson(),
          );

  void cachePosts(List<PostModel> posts) {
    var postsCollection = getPostsCollection();
    posts.map((post) => postsCollection.doc().set(post)).toList();
  }
}
