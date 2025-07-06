import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 45),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 19),
          const Spacer(),
          IconButton(
            icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
