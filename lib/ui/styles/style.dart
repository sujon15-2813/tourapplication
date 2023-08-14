import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  InputDecoration textfielddecoration(String hint) => InputDecoration(
        hintStyle: TextStyle(fontSize: 16.h),
        hintText: hint,
      );
  TextStyle myTextStyle =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
}
