import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Bottomnavpage/List_of_pages/Innovation_page.dart';
import 'package:freeze_app/Bottomnavpage/List_of_pages/report.dart';
import 'package:freeze_app/Bottomnavpage/bottom_nav.dart';
import 'package:freeze_app/app_color.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      appBar: AppBar(
        backgroundColor: AppColors.buttonBgColor,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Q&A For Add',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.normal)),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 595.h,
            width: 358.w,
            margin: EdgeInsets.only(top: 18.06),
            decoration: BoxDecoration(
              color: Color(0xFF393838),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.57, left: 23.1, right: 265.1),
                  child: Text('Question 1',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 48.h,
                          width: 250.w,
                          margin: EdgeInsets.only(
                            top: 15.94,
                            left: 9.1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.9),
                                  spreadRadius: -25,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.9),
                                  spreadRadius: -10,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.5),
                                  spreadRadius: -2,
                                  offset: Offset(-1, -1)),
                            ],
                          ),
                          child: TextField()),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yes/No',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11.57, left: 23.1, right: 265.1),
                  child: Text('Question 2',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 48.h,
                          width: 250.w,
                          margin: EdgeInsets.only(
                            top: 15.94,
                            left: 9.1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.9),
                                  spreadRadius: -25,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.9),
                                  spreadRadius: -10,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.5),
                                  spreadRadius: -2,
                                  offset: Offset(-1, -1)),
                            ],
                          ),
                          child: TextField()),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yes/No',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11.57, left: 23.1, right: 265.1),
                  child: Text('Question 3',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 48.h,
                          width: 250.w,
                          margin: EdgeInsets.only(
                            top: 15.94,
                            left: 9.1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.9),
                                  spreadRadius: -25,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.9),
                                  spreadRadius: -10,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.5),
                                  spreadRadius: -2,
                                  offset: Offset(-1, -1)),
                            ],
                          ),
                          child: TextField()),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yes/No',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11.57, left: 23.1, right: 265.1),
                  child: Text('Question 4',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 48.h,
                          width: 250.w,
                          margin: EdgeInsets.only(
                            top: 15.94,
                            left: 9.1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.9),
                                  spreadRadius: -25,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.9),
                                  spreadRadius: -10,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.5),
                                  spreadRadius: -2,
                                  offset: Offset(-1, -1)),
                            ],
                          ),
                          child: TextField()),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yes/No',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11.57, left: 23.1, right: 265.1),
                  child: Text('Question 5',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 48.h,
                          width: 250.w,
                          margin: EdgeInsets.only(
                            top: 15.94,
                            left: 9.1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.9),
                                  spreadRadius: -25,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.9),
                                  spreadRadius: -10,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.5),
                                  spreadRadius: -2,
                                  offset: Offset(-1, -1)),
                            ],
                          ),
                          child: TextField()),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yes/No',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11.57, left: 23.1, right: 265.1),
                  child: Text('Question 6',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 48.h,
                          width: 250.w,
                          margin: EdgeInsets.only(
                            top: 15.94,
                            left: 9.1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.9),
                                  spreadRadius: -25,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.9),
                                  spreadRadius: -10,
                                  offset: Offset(-5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(5, -5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.2),
                                  spreadRadius: -10,
                                  offset: Offset(-5, 5)),
                              BoxShadow(
                                  color: Color.fromRGBO(31, 31, 31, 0.5),
                                  spreadRadius: -2,
                                  offset: Offset(-1, -1)),
                            ],
                          ),
                          child: TextField()),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Yes/No',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  child: Container(
                      height: 39.h,
                      width: 167.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.w),
                          color: Color(0xff65019A)),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BottomNav()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
