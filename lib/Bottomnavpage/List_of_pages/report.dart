import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Other%20Screens/page1.dart';
import 'package:freeze_app/Other%20Screens/page2.dart';
import 'package:freeze_app/Other%20Screens/page3.dart';
import 'package:freeze_app/Other%20Screens/page4.dart';
import 'package:freeze_app/Other%20Screens/page5.dart';
import 'package:freeze_app/Other%20Screens/page6.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_color.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 320.h,
              width: 360.w,
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
                                color: Color(0xff65019A)),
                            child: Center(
                              child: Text(
                                'Page 1',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page1()));
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
                                color: Color(0xff65019A)),
                            child: Center(
                              child: Text(
                                'Page 2',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page2()));
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
                                color: Color(0xff65019A)),
                            child: Center(
                              child: Text(
                                'Page 3',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page3()));
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
                                color: Color(0xff65019A)),
                            child: Center(
                              child: Text(
                                'Page 4',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page4()));
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
                                color: Color(0xff65019A)),
                            child: Center(
                              child: Text(
                                'Page 5',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page5()));
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        child: Container(
                            height: 44.h,
                            width: 290.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.w),
                                color: Color(0xff65019A)),
                            child: Center(
                              child: Text(
                                'Page 6',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page6()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
