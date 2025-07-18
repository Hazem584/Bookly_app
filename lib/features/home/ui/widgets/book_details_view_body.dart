import 'package:bookly_app/features/home/ui/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';

import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const BookDetailsSection(),
                verticalSpace(40),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
