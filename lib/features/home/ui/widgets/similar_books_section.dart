import 'package:bookly_app/features/home/ui/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also like", style: TextStyles.font14SemiBold),
        verticalSpace(15),
        const SimilarBooksListView(),
      ],
    );
  }
}
