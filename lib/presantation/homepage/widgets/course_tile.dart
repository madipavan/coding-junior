import 'package:codingjunior/core/assets/images/course_image.dart';
import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:codingjunior/presantation/course%20details/screens/course_details.dart';
import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  const CourseTile({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DetailsPage())),
      child: Container(
        height: ScreenSize.height * 0.12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffedf2f3),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(15),
                height: ScreenSize.height * 0.08,
                width: ScreenSize.width * 0.18,
                child: Image.asset(
                  CourseImage.photoshop,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: ScreenSize.width * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Photoshop Editing Course",
                    style: TextStyle(
                        fontSize: ScreenSize.width * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: ScreenSize.height * 0.01,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: ScreenSize.width * 0.05,
                      ),
                      SizedBox(
                        width: ScreenSize.width * 0.015,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: ScreenSize.width * 0.03),
                      ),
                      SizedBox(
                        width: ScreenSize.width * 0.01,
                      ),
                      Text(
                        "(230)",
                        style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: ScreenSize.width * 0.03),
                      ),
                      SizedBox(
                        width: ScreenSize.width * 0.03,
                      ),
                      const Icon(
                        Icons.play_circle_outline,
                        color: AppColors.secondaryText,
                      ),
                      SizedBox(
                        width: ScreenSize.width * 0.01,
                      ),
                      Text(
                        "30 Lessons",
                        style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: ScreenSize.width * 0.03),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
