part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSuccess extends NewestBookState {
  final List<BookModel> bookModel;
  const NewestBookSuccess(this.bookModel);
}

final class NewestBookFailure extends NewestBookState {
  final String errMessage;

  const NewestBookFailure(this.errMessage);
}
