import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/networking/api_error_handler.dart';

abstract class HomeRepo {
 Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
 Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
 Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}