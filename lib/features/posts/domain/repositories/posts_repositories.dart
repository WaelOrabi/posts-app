import 'package:chat_app_project/features/posts/domain/entites/post.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class PostsRepositories{
  Future <Either<Failure,List<Post>>>getAllPosts();
  Future<Either<Failure,Unit>>deletePost(int id);
  Future<Either<Failure,Unit>>updatePost(Post post);
  Future<Either<Failure,Unit>>addPost(Post post);
}
