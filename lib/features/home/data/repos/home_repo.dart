import 'package:bookly_app/core/networking/api_error_handeler.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<ApiErrorHandler, List<BookModel>>> fetchBestSellerBooks();
 Future<Either<ApiErrorHandler, List<BookModel>>> fetchFeaturedBooks();
}