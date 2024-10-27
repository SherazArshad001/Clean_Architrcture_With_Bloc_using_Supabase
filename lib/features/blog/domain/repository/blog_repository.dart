import 'dart:io';

import 'package:clean_architecture/core/error/failures.dart';
import 'package:clean_architecture/features/blog/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class BlogRepository {
  Future<Either<Failure, Blog>> uploadBlog({
    required File image,
    required String title,
    required String content,
    required String posterId,
    required List<String> topics,
  });
}
