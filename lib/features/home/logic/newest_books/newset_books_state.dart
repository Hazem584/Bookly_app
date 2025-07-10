part of 'newset_books_cubit.dart';

@immutable
sealed class NewsetBooksState {}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;
  NewsetBooksSuccess(this.books);
}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;
  NewsetBooksFailure(this.errMessage);
}
