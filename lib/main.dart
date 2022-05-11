import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:freeze_app/SignIn/password_setup.dart';
import 'package:freeze_app/SignIn/register.dart';
import 'package:freeze_app/SignIn/signin.dart';
import 'package:freeze_app/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
          builder: (child) =>


    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       // backgroundColor: AppColors.scaffoldBG,
        primarySwatch: Colors.blue,
        fontFamily:   GoogleFonts.montserrat().fontFamily,
      ),
      home: child,
    ),
      child: Signin(),
      );
  }
}
