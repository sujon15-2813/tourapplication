


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourapplication/ui/widgets/violetbutton.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10.h),
              VioletButton("Agree", (){}),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}