import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourapplication/const/app_color.dart';
import 'package:tourapplication/ui/styles/style.dart';

class UserForm extends StatelessWidget {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _dobcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30, top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tell Us More About You",
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: AppsColor.violetColor),
                ),
                SizedBox(height: 12.h),
                Text(
                  "We will not share  your information outside this application",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 50.h),
                FromField(_namecontroller, TextInputType.name, 'Name'),
                FromField(_phonecontroller, TextInputType.number, 'Number'),
                FromField(_addresscontroller, TextInputType.text, 'Address'),
                TextFormField(
                  controller: _dobcontroller,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "Date of Birth",
                    hintStyle: TextStyle(
                      fontSize: 15.sp,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget FromField(controller, inputType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyle().textfielddecoration(hint),
  );
}
