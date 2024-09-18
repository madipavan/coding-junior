import 'package:codingjunior/core/assets/images/course_image.dart';
import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:codingjunior/presantation/common_widgets/basic_icon_button.dart';
import 'package:codingjunior/presantation/common_widgets/center_heading.dart';
import 'package:codingjunior/presantation/homepage/widgets/course_card.dart';
import 'package:codingjunior/presantation/homepage/widgets/course_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  horizontalTitleGap: ScreenSize.width * 0.02,
                  minVerticalPadding: 0,
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    width: ScreenSize.width * 0.2,
                    height: ScreenSize.height * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(CourseImage.a4),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  title: Text(
                    "Christiana Amandla",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenSize.width * 0.05),
                  ),
                  subtitle: const Text(
                    "Let's Learning to Smart",
                    style: TextStyle(color: AppColors.secondaryText),
                  ),
                  trailing: BasicIconButton(
                      icon: Icons.search_rounded, onPressed: () {}),
                ),
                SizedBox(
                  height: ScreenSize.height * 0.05,
                ),
                Container(
                  //parent
                  height: ScreenSize.height * 0.25,
                  width: ScreenSize.width,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          //light grren container
                          height: ScreenSize.height * 0.08,
                          decoration: BoxDecoration(
                              color: AppColors.lightgreen,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mathematics Course",
                                  style: TextStyle(
                                      fontSize: ScreenSize.width * 0.035,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  height: ScreenSize.height * 0.05,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(2)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(ScreenSize.width * 0.02),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "19 Nov, 2023",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _statsContainer(
                                  Icons.check_circle, "Completed", "20"),
                              const VerticalDivider(
                                color: AppColors.lightgreen,
                                endIndent: 10,
                                indent: 20,
                              ),
                              _statsContainer(
                                  Icons.watch_later, "Hours Spent", "455"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.height * 0.02,
                ),
                const CenterHeading(
                  text1: "Popular Courses",
                ),
                SizedBox(
                  height: ScreenSize.height * 0.02,
                ),
                SizedBox(
                  height: ScreenSize.height * 0.3,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      width: ScreenSize.width * 0.1,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const CourseCard(),
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: ScreenSize.height * 0.02,
                ),
                const CenterHeading(
                  text1: "Popular Courses",
                ),
                SizedBox(
                  height: ScreenSize.height * 0.02,
                ),
                SizedBox(
                  height: ScreenSize.height * 0.3,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: ScreenSize.height * 0.02,
                    ),
                    itemBuilder: (context, index) => const CourseTile(),
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _statsContainer(icon, title, number) {
    return Row(
      children: [
        ClipOval(
            child: Container(
          height: 50,
          width: 50,
          color: AppColors.lightgreen,
          child: Center(
            child: Icon(
              icon,
              color: AppColors.primary,
            ),
          ),
        )),
        SizedBox(
          width: ScreenSize.width * 0.02,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              number,
              style: TextStyle(
                  fontSize: ScreenSize.width * 0.05,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
