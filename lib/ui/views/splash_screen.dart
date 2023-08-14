import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tourapplication/const/app_strings.dart';
import 'package:tourapplication/ui/route/route.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // splash screen jump to onboard screen
  void initState() {
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(onboarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite, //screen er joto tuku width ace ototuku nibe
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100.w),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppsString.AppName,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
