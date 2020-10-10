import 'package:dartz/dartz.dart';
import '../repositories/articles_repository.dart';

import '../../core/models/failure.dart';

import '../../core/models/article_model.dart';
import '../../core/usecases/usecase.dart';

class GetRemoteArticles implements UseCase<List<Article>> {
  final ArticlesRepository repository;
  GetRemoteArticles(this.repository);
  @override
  Future<Either<Failure, List<Article>>> call() async {
    return await repository.getRemoteArticles();
  }
}