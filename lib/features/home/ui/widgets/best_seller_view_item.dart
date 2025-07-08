import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(AssetsData.book1),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          horizontalSpace(30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                      "Harry Potter and the Goblet of Fire",
                      style: TextStyles.font20Normal,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis
                  ),
                ),
                verticalSpace(3),
                Text("J.K Rowling", style: TextStyles.font14Normal,),
                verticalSpace(3),
                Row(
                  children:  [
                    Text("19.99 €", style: TextStyles.font20Normal,),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.amber,
                      size: 15,
                    ),
                    horizontalSpace(6.3),
                    Text("4.9", style: TextStyles.font17Normal,),
                    horizontalSpace(6),
                    Text("(2500)", style: TextStyles.font14Normal,)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}