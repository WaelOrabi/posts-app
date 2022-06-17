import 'package:chat_app_project/core/error/failures.dart';
import 'package:chat_app_project/features/posts/domain/repositories/posts_repositories.dart';
import 'package:dartz/dartz.dart';

import '../entites/post.dart';

class UpdatePostUseCase{
  final PostsRepositories postsRepositories;

  UpdatePostUseCase(this.postsRepositories);
  Future<Future<Either<Failure, Unit>>> call(Post post)async{
    return postsRepositories.updatePost(post);
  }
}