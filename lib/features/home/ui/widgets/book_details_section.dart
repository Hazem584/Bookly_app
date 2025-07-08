import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.19,
            vertical: 10,
          ),
          child: CustomBookImage(),
        ),
        verticalSpace(13),
        Text("The Jungle Book", style: TextStyles.font26Bold),
        verticalSpace(3),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: TextStyles.font18SemiBold.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        verticalSpace(8),
        BookRating(),
        verticalSpace(20),
        const  BooksAction(),
      ],
    );
  }
}
