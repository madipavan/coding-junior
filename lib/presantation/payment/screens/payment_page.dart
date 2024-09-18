import 'package:codingjunior/core/assets/images/course_image.dart';
import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:codingjunior/presantation/common_widgets/basic_button.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      bottomNavigationBar: _bottom(context),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
              child: Container(
                //parent container white color
                margin: EdgeInsets.only(top: ScreenSize.height * 0.12),
                height: ScreenSize.height * 0.7,
                width: ScreenSize.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: ScreenSize.height * 0.085,
                      ),
                      Text(
                        "Payment Success",
                        style: TextStyle(
                            fontSize: ScreenSize.width * 0.08,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: ScreenSize.height * 0.02,
                      ),
                      Text(
                        "\$35.00",
                        style: TextStyle(
                            fontSize: ScreenSize.width * 0.08,
                            fontWeight: FontWeight.bold,
                            color: AppColors.paymentbg),
                      ),
                      SizedBox(
                        height: ScreenSize.height * 0.02,
                      ),
                      Container(
                        //profile
                        height: ScreenSize.height * 0.3,
                        width: ScreenSize.width,
                        decoration: BoxDecoration(
                            color: const Color(0xfff6f7fb),
                            border: Border.all(
                                color: AppColors.secondaryText, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  _circleavatar(CourseImage.a2),
                                  SizedBox(
                                    width: ScreenSize.width * 0.02,
                                  ),
                                  Text(
                                    "Christiana Amandala",
                                    style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontSize: ScreenSize.width * 0.04),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenSize.height * 0.02,
                              ),
                              Text(
                                "Photoshop Editing Course",
                                style: TextStyle(
                                    fontSize: ScreenSize.width * 0.05,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "ID Transcription",
                                    style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontSize: ScreenSize.width * 0.045),
                                  ),
                                  Text(
                                    "Invoice Date",
                                    style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontSize: ScreenSize.width * 0.045),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "TA11231PW",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenSize.width * 0.05),
                                  ),
                                  Text(
                                    "Nov 14, 2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenSize.width * 0.05),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize.height * 0.025,
                      ),
                      Container(
                        height: ScreenSize.height * 0.1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(CourseImage.code),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: ScreenSize.height * 0.03),
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundColor: AppColors.scaffoldBg,
                  radius: ScreenSize.width * 0.2,
                  child: Icon(
                    Icons.check_circle,
                    size: ScreenSize.width * 0.35,
                    color: AppColors.paymentbg,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleavatar(img) {
    return CircleAvatar(
      radius: 10,
      child: ClipOval(
        child: SizedBox(
          height: 25,
          width: 25,
          child: Image.asset(img, fit: BoxFit.cover),
        ),
      ),
    );
  } //avatar

  Widget _bottom(context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: ScreenSize.height * 0.015,
          horizontal: ScreenSize.width * 0.05),
      child: BasicButton(
        onPressed: () {
          Navigator.pop(context);
        },
        text: "Done",
        height: ScreenSize.height * 0.065,
        textsize: ScreenSize.width * 0.05,
      ),
    );
  }
}
