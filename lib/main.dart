import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/View/Bottomnavpage/bottom_nav.dart';
import 'package:freeze_app/router.dart';
import 'package:freeze_app/shared/sharedservice.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'View/Bottomnavpage/List_of_pages/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferenceHelper.getPreference("email")
      .then((value) => runApp(MyApp(value != null)));
}

class MyApp extends StatelessWidget {
  MyApp(this.isLoggedIn, {Key? key}) : super(key: key);

  bool isLoggedIn;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (child) => GetMaterialApp(
              builder: (context, widget) => ResponsiveWrapper.builder(
                  ClampingScrollWrapper.builder(context, widget!),
                  breakpoints: [
                    ResponsiveBreakpoint.resize(360, name: MOBILE),
                    ResponsiveBreakpoint.autoScale(600, name: TABLET),
                    ResponsiveBreakpoint.resize(800, name: DESKTOP),
                    ResponsiveBreakpoint.autoScale(1600, name: 'xl')
                  ]),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                // backgroundColor: AppColors.scaffoldBG,
                primarySwatch: Colors.blue,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
              getPages: AppRoutes.routes,
            ),
        child: isLoggedIn ? BottomNav() : SplashScreen());
  }
}
