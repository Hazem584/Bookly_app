import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const  [
          Expanded(
            child: CustomButton(
              BackgroundColor: Colors.white,
              textColor: Colors.black,
              text: "19.99 \$",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize:18 ,
              BackgroundColor: Color(0xff2ef8262),
              textColor: Colors.white,
              text: "Free Preview",
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}