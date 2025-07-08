import 'package:flutter/material.dart';

import '../../../../core/helpers/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6/4,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.red,
            image: DecorationImage(image: AssetImage(AssetsData.book1), fit: BoxFit.fill),
          ),
        ),
    );
  }
}