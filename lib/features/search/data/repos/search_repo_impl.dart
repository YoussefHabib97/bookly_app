import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';

class SearchRepositoryImplementation implements SearchRepository {
  final ApiService apiService;

  SearchRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String bookTitle}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=intitle:$bookTitle&sorting=relevance');

      List<BookModel> booksList = [];

      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }
      print(booksList);
      return right([...booksList]);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
