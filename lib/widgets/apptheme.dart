import 'package:flutter/material.dart';

import '../app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {

  static InputDecoration textFieldDecoration(String hintText, Icon icon) =>
      InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintStyle:  TextStyle(
            fontSize: 12.sp,
            color: AppColors.hintTextGrey,
            fontWeight: FontWeight.w400,
          ),
          hintText: hintText,
          contentPadding:  EdgeInsets.only(left: 51.w),
      prefixIcon: SizedBox(height: 20.w, width: 20.w, child: icon,),
      );

  // static Widget divider() => Container(
  //   width: Get.width,
  //   height: 1,
  //   color: AppColors.textFieldBorderColor,
  // );

}
