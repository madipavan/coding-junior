import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LessonTile extends StatelessWidget {
  const LessonTile({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Container(
      height: ScreenSize.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: AppColors.secondaryText),
            ),
            height: ScreenSize.height * 0.08,
            width: ScreenSize.width * 0.16,
            child: const Center(
              child: Icon(Icons.lock, color: AppColors.secondaryText),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Introduction",
                style: TextStyle(
                    fontSize: ScreenSize.width * 0.04,
                    fontWeight: FontWeight.w500),
              ),
              _icontextrow(Icons.watch_later_outlined, "3h 30min")
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: AppColors.secondaryText,
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.play_circle,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    width: ScreenSize.width * 0.01,
                  ),
                  const Text(
                    "Play Video",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _icontextrow(icon, text) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.secondaryText,
        ),
        SizedBox(
          width: ScreenSize.width * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(color: AppColors.secondaryText),
        )
      ],
    );
  }
}
