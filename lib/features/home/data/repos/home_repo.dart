import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchLatestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
