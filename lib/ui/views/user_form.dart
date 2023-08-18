import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:tourapplication/const/app_color.dart';
import 'package:tourapplication/ui/route/route.dart';
import 'package:tourapplication/ui/styles/style.dart';
import 'package:tourapplication/ui/views/privacy_policy.dart';
import 'package:tourapplication/ui/widgets/violetbutton.dart';

class UserForm extends StatelessWidget {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  //jehetu stateless widget use korteci tai  state change korar jonno Rx<>.obs use krchi atar
  //fole amra ak page theke onno page a jete perbo

  Rx<TextEditingController> _dobcontroller = TextEditingController().obs;
  // ata use krchi date pawar jonno
  Rx<DateTime> selectedDate = DateTime.now().obs;
  _selectDate(BuildContext context) async {
    //! parameter hisabe context pathano hsce
    final selected = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2040));
    if (selected != null && selected != selectedDate) {
      _dobcontroller.value.text =
          "${selected.day}-${selected.month}-${selected.year}";
    }
  }

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
                Obx(
                  () => TextFormField(
                    controller: _dobcontroller.value,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Date of Birth",
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () => _selectDate(context),
                        icon: Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: ['Male', 'Female'],
                  onToggle: (index) {
                    print("switched to :$index");
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                VioletButton("Submit", () => Get.toNamed(privacyPolicy))
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
