import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star, color: Colors.amber),
        horizontalSpace(8),
        Text("4.8", style: TextStyles.font18SemiBold),
        horizontalSpace(8),
        Opacity(
          opacity: 0.5,
          child: Text("(2390 )", style: TextStyles.font14Normal),
        ),
      ],
    );
  }
}
