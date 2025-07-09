import 'package:bookly_app/core/networking/api_error_handeler.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<ApiErrorHandler, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServices.get(
        endPoint:
            "volumes?filtering=free-ebooks&sorting=newest&q=subject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ApiErrorHandler());
    }
  }

  @override
  Future<Either<ApiErrorHandler, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
