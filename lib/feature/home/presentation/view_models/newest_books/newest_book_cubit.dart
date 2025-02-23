import 'package:bookly/feature/home/data/Repo/home_repo.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    NewestBookLoading();
    var result = await homeRepo.fetchNewestBook();
    result.fold(
      (failure) => emit(NewestBookFailure(failure.errMessage)),
      //if Success
      (books) => emit(NewestBookSuccess(books)),
    );
  }
}
