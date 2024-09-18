import 'package:codingjunior/core/assets/images/course_image.dart';
import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:codingjunior/presantation/common_widgets/basic_button.dart';
import 'package:codingjunior/presantation/common_widgets/basic_icon_button.dart';
import 'package:codingjunior/presantation/common_widgets/center_heading.dart';
import 'package:codingjunior/presantation/course%20details/widget/lesson_tile.dart';
import 'package:codingjunior/presantation/payment/screens/payment_page.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      bottomNavigationBar: _bottom(context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasicIconButton(
                        icon: Icons.arrow_back_ios,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: ScreenSize.width * 0.06,
                          fontWeight: FontWeight.bold),
                    ),
                    BasicIconButton(
                        icon: Icons.notifications_none_outlined,
                        onPressed: () {})
                  ],
                ),
                Container(
                  height: ScreenSize.height * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Our Student",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            _circleavatar(CourseImage.a1),
                            _circleavatar(CourseImage.a2),
                            _circleavatar(CourseImage.a3),
                            _circleavatar(CourseImage.a4),
                            _circleavatar(CourseImage.a5),
                          ],
                        ),
                        Text(
                          "Photoshop Editing Course",
                          style: TextStyle(
                              fontSize: ScreenSize.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "A representation that can convey the three- dimensional aspect of a design through a two- dimensional medium",
                          style: TextStyle(
                              fontSize: ScreenSize.width * 0.03,
                              color: AppColors.secondaryText),
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _icontextrow(
                                Icons.play_circle_outline, "30 Lessons"),
                            _icontextrow(
                                Icons.watch_later_outlined, "13h 30min"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.height * 0.02,
                ),
                const CenterHeading(text1: "Video"),
                SizedBox(
                  height: ScreenSize.height * 0.02,
                ),
                SizedBox(
                  height: ScreenSize.height * 0.5,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: ScreenSize.height * 0.02,
                    ),
                    itemBuilder: (context, index) => const LessonTile(),
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
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

  Widget _circleavatar(img) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: Colors.white,
      child: ClipOval(
        child: SizedBox(
          height: 25,
          width: 25,
          child: Image.asset(img, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _bottom(context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: ScreenSize.height * 0.08,
              width: ScreenSize.width * 0.18,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Icon(
                  Icons.bookmarks_rounded,
                  color: Colors.white,
                  size: ScreenSize.width * 0.06,
                ),
              ),
            ),
          ),
          SizedBox(
            width: ScreenSize.width * 0.04,
          ),
          Expanded(
            child: BasicButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage()));
              },
              text: "Enroll Now",
              height: 60,
              textsize: ScreenSize.width * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
