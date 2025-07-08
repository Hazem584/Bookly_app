import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.BackgroundColor, required this.textColor,  this.borderRadius, required this.text, this.fontSize});
final Color BackgroundColor;
final Color textColor;
final BorderRadius? borderRadius;
final String text;
final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
          onPressed: (){},
        style: TextButton.styleFrom(
          backgroundColor: BackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
        text,
        style: TextStyles.font18Bold.copyWith(
          color: textColor,
          fontSize: fontSize
        ),
      ),
      ),
    );
  }
}
