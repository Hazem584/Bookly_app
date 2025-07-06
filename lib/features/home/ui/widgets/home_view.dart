import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/assets.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
         const CustomAppBar(),
          const CustomListViewItem(),
        ]
    );
  }
}


