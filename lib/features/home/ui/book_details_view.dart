import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/similar_books/similar_books_cubit.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: 'computers');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: BookDetailsViewBody(),
        ),
    );
  }
}
