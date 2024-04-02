import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

part 'latest_books_state.dart';

class LatestBooksCubit extends Cubit<LatestBooksState> {
  LatestBooksCubit() : super(LatestBooksInitial());
}
