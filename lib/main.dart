import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/widgets/appcache.dart';

<<<<<<< HEAD


import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'View/Bottomnavpage/List_of_pages/splashscreen.dart';



void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Appcache.sharecache = await SharedPreferences.getInstance();

  runApp(MyApp());
=======
import 'package:freeze_app/SignIn/signin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
>>>>>>> 2390a31a60fc4dd7fe83c4d64087ab02ad249910
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    bool isLoggedIn =
        Appcache.sharecache.getString('email') != null &&
            (Appcache.sharecache.getString('status') != null &&
                (Appcache.sharecache.getString('status') == 'true'));

=======
>>>>>>> 2390a31a60fc4dd7fe83c4d64087ab02ad249910
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
<<<<<<< HEAD
      builder: (child) => GetMaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),
            breakpoints: [
              ResponsiveBreakpoint.resize(360, name: MOBILE),
              ResponsiveBreakpoint.autoScale(600, name: TABLET),
              ResponsiveBreakpoint.resize(800, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(1600, name: 'xl')
            ]),
=======
      builder: (child) => MaterialApp(
>>>>>>> 2390a31a60fc4dd7fe83c4d64087ab02ad249910
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // backgroundColor: AppColors.scaffoldBG,
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: child,
      ),
<<<<<<< HEAD
      child: SplashScreen(),
=======
      child: Signin(),
>>>>>>> 2390a31a60fc4dd7fe83c4d64087ab02ad249910
    );
  }
}
