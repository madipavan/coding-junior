import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CenterHeading extends StatelessWidget {
  final String text1;
  const CenterHeading({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: ScreenSize.width * 0.04,
          ),
        ),
        const Text(
          "View All",
          style: TextStyle(color: AppColors.secondaryText),
        )
      ],
    );
  }
}
