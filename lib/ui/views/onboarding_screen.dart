import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tourapplication/const/app_color.dart';
import 'package:tourapplication/ui/route/route.dart';
import 'package:tourapplication/ui/styles/style.dart';
//import 'package:tourapplication/ui/views/auth/sign_up.dart';

class OnboardingScreen extends StatelessWidget {
  List<String> _lottieFiles = [
    "assets/files/welcome.json",
    "assets/files/categories.json",
    "assets/files/support.json",
  ];
  List<String> _titles = [
    "Welcome",
    "Categories",
    "Support",
  ];
  List<String> _description = [
    "Welcome to Ak Travels And Enjoy the total tour .",
    "Ak Travel has few categories.",
    "Every  Traveler of this travel agency they get good support .",
  ];
  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                flex: 2,
                child: Lottie.asset(_lottieFiles[_currentIndex.toInt()]),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppsColor.ScaffoldColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 10,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 5,
                          spreadRadius: 1.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            "${_titles[_currentIndex.toInt()]}",
                            style: AppStyle().myTextStyle,
                          ),
                        ),
                        Obx(
                          () => Text(
                            "${_description[_currentIndex.toInt()]}",
                            style: AppStyle().myTextStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() => DotsIndicator(
                                  dotsCount: _lottieFiles.length,
                                  position: _currentIndex.toInt(),
                                  decorator: DotsDecorator(),
                                )),
                            InkWell(
                              onTap: () {
                                if (_currentIndex == 2) {
                                  Get.toNamed(signUp);
                                } else {
                                  _currentIndex + 1;
                                }
                              },
                              child: Container(
                                height: 37.h,
                                width: 37.h,
                                decoration: BoxDecoration(
                                    color: AppsColor.ScaffoldColor,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(4.0, 4.0),
                                          blurRadius: 10,
                                          spreadRadius: 1.0),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 5,
                                          spreadRadius: 1.0),
                                    ]),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
