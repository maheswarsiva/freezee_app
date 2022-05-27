 import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/app_color.dart';

class AppTheme {

  static InputDecoration textFieldDecoration(String hintText, Icon icon) =>
      InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
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


}
