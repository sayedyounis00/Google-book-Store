import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/services/api_services.dart';
import 'package:bookly/feature/home/data/Repo/home_repo.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBook() async {
    try {
      var data = await apiServices.get(
          endPoint:
              "Filtering=free-ebooks&q=subject:programming&Sorting=newest");
      List<BookModel> books = [];
      for (var item in data["items"][0]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
