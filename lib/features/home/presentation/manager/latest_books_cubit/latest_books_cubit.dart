import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'latest_books_state.dart';

class LatestBooksCubit extends Cubit<LatestBooksState> {
  LatestBooksCubit(this.homeRepository) : super(LatestBooksInitial());

  final HomeRepository homeRepository;

  Future<void> fetchLatestBooks() async {
    emit(LatestBooksLoading());
    var result = await homeRepository.fetchLatestBooks();

    result.fold(
      (failure) => emit(
        LatestBooksFailure(failure.errMessage),
      ),
      (books) => emit(
        LatestBooksSuccess(books),
      ),
    );
  }
}
