import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepository) : super(SearchInitial());

  final SearchRepository searchRepository;

  Future<void> fetchSearchedBook({required String bookTitle}) async {
    emit(SearchLoading());
    var result = await searchRepository.fetchSearchResult(bookTitle: bookTitle);

    result.fold(
      (failure) => emit(SearchFailure(failure.errMessage)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
