import 'package:bloc/bloc.dart';
import 'package:bookly/feature/home/data/Repo/home_repo.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchFeatueBooks() async {
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errMessage)),
      //if Success
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
