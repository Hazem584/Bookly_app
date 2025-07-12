import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/ui/widgets/book_rating.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/route/app_router.dart';
import '../../../../core/theming/styles.dart';

class BestSellerViewItem extends StatelessWidget {
   const BestSellerViewItem({super.key, required this.bookModel});

 final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 130.h,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail?? 'assets/images/error_image.png',),
            horizontalSpace(30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.KBookDetailsView);
                      },
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: TextStyles.font20Normal,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  verticalSpace(3),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.KBookDetailsView);
                    },
                    child: Text(bookModel.volumeInfo.authors![0], style: TextStyles.font14Normal),
                  ),
                  verticalSpace(3),
                  Row(
                    children: [
                      Text("Free", style: TextStyles.font20Normal),
                      Spacer(),
                      horizontalSpace(6.3),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
