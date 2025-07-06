import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/assets.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
           CustomAppBar(),
           FeaturedBooksListView(),
        ]
    );
  }
}

