import 'package:flutter/material.dart';

import '../../../../core/helpers/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
