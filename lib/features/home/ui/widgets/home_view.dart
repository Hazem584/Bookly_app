import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/assets.dart';
import 'best_seller_list_view_item.dart';
import 'best_seller_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        verticalSpace(50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("Best Seller", style: TextStyles.font18SemiBold),
        ),
        verticalSpace(20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BestSellerListViewItem(),
          ),
        ),
      ],
    );
  }
}
