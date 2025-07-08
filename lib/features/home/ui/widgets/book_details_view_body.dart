import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children:  [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.19, vertical: 30),
            child: CustomBookImage(),
          ),

        ],
      ),
    );
  }
}

