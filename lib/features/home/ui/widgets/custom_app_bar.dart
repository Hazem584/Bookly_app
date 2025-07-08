import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/route/app_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20, top: 45, bottom: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 19),
          const Spacer(),
          IconButton(
            icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20
            ),
            onPressed: () {GoRouter.of(context).push(AppRouter.KSearchView);},
          ),
        ],
      ),
    );
  }
}
