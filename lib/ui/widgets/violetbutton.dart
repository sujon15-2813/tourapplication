import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourapplication/const/app_color.dart';

class VioletButton extends StatelessWidget {
  // amra normally bool er jnnno onno
  //vabe nei akhane get x use krteci tai Rx use krteci
  RxBool _value = false.obs;
  String title;
  VioletButton(this.title);

  @override
  Widget build(BuildContext context) {
    //inkwell use krchi widgets takhe tappable krar jnno
    //kono custom widget k jodi tapable hoy tahole takhe obx diye wrap krte hoy
    return Obx(
      () => InkWell(
          onTap: () {
            _value.value = true;
          },
          child: Container(
              height: 48.h,
              decoration: BoxDecoration(
                color: AppsColor.violetColor,
                borderRadius: BorderRadius.all(Radius.circular(5.r)),
              ),
              child: _value == false
                  ? Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Please wait",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Transform.scale(
                          scale: 0.4,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ))),
    );
  }
}
