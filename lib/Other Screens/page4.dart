import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Bottomnavpage/List_of_pages/report.dart';
import 'package:freeze_app/Bottomnavpage/bottom_nav.dart';
import 'package:freeze_app/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => BottomNav()))),
        backgroundColor: AppColors.buttonBgColor,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Advertisement',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.normal)),
        ),
      ),
      body: Container(
        height: 310,
        width: 341,
        margin: EdgeInsets.only(
          top: 45,
          left: 24,
          right: 25,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF393838),
          borderRadius: BorderRadius.circular(20),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30.h,
              width: 282.w,
              margin: EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    child: Text('Name',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Container(
                    height: 30.h,
                    width: 170.w,
                    //margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: Color(0xFF292929)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.0, bottom: 8.0),
                        border: InputBorder.none,
                        hintText: "Eg (Ganesh)",
                        hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30.h,
              width: 282.w,
              margin: EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    child: Text('A/c No',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Container(
                    height: 30.h,
                    width: 170.w,
                    //margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: Color(0xFF292929)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.0, bottom: 8.0),
                        border: InputBorder.none,
                        hintText: "56498489489",
                        hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30.h,
              width: 282.w,
              margin: EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    child: Text('Transaction',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Container(
                    height: 30.h,
                    width: 170.w,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: Color(0xFF292929)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.0, bottom: 8.0),
                        border: InputBorder.none,
                        hintText: "Completed",
                        hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30.h,
              width: 282.w,
              margin: EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    child: Text('Date',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Container(
                    height: 30.h,
                    width: 170.w,
                    //margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: Color(0xFF292929)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.0, bottom: 8.0),
                        border: InputBorder.none,
                        hintText: "15/02/2021",
                        hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30.h,
              width: 282.w,
              margin: EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    child: Text('Time',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                  Container(
                    height: 30.h,
                    width: 170.w,
                    //margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: Color(0xFF292929)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 20.0, bottom: 8.0),
                        border: InputBorder.none,
                        hintText: "18:25",
                        hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
