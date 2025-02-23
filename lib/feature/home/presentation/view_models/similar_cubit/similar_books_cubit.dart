import 'package:bookly/feature/home/data/Repo/home_repo.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  HomeRepo homeRepo;
  Future<void> fetchSimmilarBooks({required String category}) async {
    SimilarBooksLoading();
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errMessage)),
      //if Success
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
