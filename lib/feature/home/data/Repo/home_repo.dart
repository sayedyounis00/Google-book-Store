import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //here we add return type and agument
  Future<Either<Failure, List<BookModel>>> fetchNewestBook();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
