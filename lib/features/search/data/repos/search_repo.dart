import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failures.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String bookTitle});
}
