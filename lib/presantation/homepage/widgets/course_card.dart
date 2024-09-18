import 'package:codingjunior/core/assets/images/course_image.dart';
import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:codingjunior/presantation/course%20details/screens/course_details.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DetailsPage())),
      child: Container(
        height: ScreenSize.height * 35,
        width: ScreenSize.width * 0.55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: ScreenSize.width * 0.2,
                height: ScreenSize.height * 0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(CourseImage.photoshop),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                "Photoshop Editing Course",
                style: TextStyle(
                    fontSize: ScreenSize.width * 0.04,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(CourseImage.a1,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        _circleavatar(20, CourseImage.a2),
                        _circleavatar(40, CourseImage.a5),
                        Positioned(
                          left: 60,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: ClipOval(
                              child: Container(
                                color: AppColors.primary,
                                height: 25,
                                width: 25,
                                child: Center(
                                  child: Text(
                                    "+20",
                                    style: TextStyle(
                                        fontSize: ScreenSize.width * 0.022,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Participant",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
      ),
    );
  }

  Widget _circleavatar(double margin, img) {
    return Positioned(
      left: margin,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.white,
        child: ClipOval(
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(img, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
