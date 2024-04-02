import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final ApiService apiService;

  HomeRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchLatestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=subject:programming&sorting=newest');

      List<BookModel> booksList = [];

      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }

      return right([...booksList]);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
