import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final ApiService apiService;

  HomeRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?filtering=free-ebooks&q=subject:computer+science');

      List<BookModel> booksList = [];

      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }

      return right([...booksList]);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchLatestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?filtering=free-ebooks&q=subject:programming&sorting=newest');

      List<BookModel> booksList = [];

      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }

      return right([...booksList]);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?filtering=free-ebooks&q=subject:programming&sorting=relevance');

      List<BookModel> booksList = [];

      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }

      return right([...booksList]);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
