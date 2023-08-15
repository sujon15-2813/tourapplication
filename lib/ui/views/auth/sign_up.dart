import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tourapplication/const/app_color.dart';
import 'package:tourapplication/ui/route/route.dart';
import 'package:tourapplication/ui/styles/style.dart';
import 'package:tourapplication/ui/widgets/violetbutton.dart';

class SignUp extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30, top: 80.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create\nYour Account",
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w500,
                      color: AppsColor.violetColor),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Create Your Account and start your journey....",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 80.h),
                TextFormField(
                  controller: _emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      AppStyle().textfielddecoration("Enter your Email "),
                ),
                TextFormField(
                  controller: _passwordcontroller,
                  keyboardType: TextInputType.text,
                  decoration:
                      AppStyle().textfielddecoration("Enter the password"),
                ),
                SizedBox(
                  height: 40.h,
                ),
                VioletButton("Create Account ", () => Get.toNamed(userForm)),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "--OR--",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/fb.png"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/google.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                      text: "Already an user ?  ",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(signIn),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
