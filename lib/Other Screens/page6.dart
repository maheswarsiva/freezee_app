import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Bottomnavpage/bottom_nav.dart';
import 'package:freeze_app/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
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
          child: Text('Personal Details',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.normal)),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  margin: EdgeInsets.only(top: 35, left: 35),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      color: Colors.amberAccent,
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIMEOk8H8iksDM_MljKKPQTaYeTJ3yOjPapQ&usqp=CAU",
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 100.h,
                  width: 150.w,
                  margin: EdgeInsets.only(
                    top: 35,
                    left: 30.64,
                  ),
                  // decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(20.w),
                  //   color: Colors.amberAccent,
                  // ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Raja',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text('154453486486',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal)),
                      ]),
                ),
              ],
            ),
          ),
          Container(
            height: 424.h,
            width: 341.w,
            margin: EdgeInsets.only(top: 20.5),
            decoration: BoxDecoration(
              color: Color(0xFF292929),
              borderRadius: BorderRadius.circular(20.w),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 7.w,
                    offset: Offset(1, 1)),
                BoxShadow(
                    color: Color(0xff28003),
                    blurRadius: 2.w,
                    offset: Offset(-1, -1)),
                BoxShadow(
                    color: Color.fromARGB(0, 40, 0, 62),
                    blurRadius: 2.w,
                    offset: Offset(3, -3)),
                BoxShadow(
                    color: Color.fromARGB(0, 40, 0, 62),
                    blurRadius: 2.w,
                    offset: Offset(-3, 3)),
                BoxShadow(
                    color: Color.fromARGB(255, 1, 1, 1),
                    blurRadius: 2.w,
                    //blurStyle: BlurStyle.inner,
                    offset: Offset(-3, -3)),
                BoxShadow(
                    color: Color.fromARGB(0, 40, 0, 62),
                    blurRadius: 2.w,
                    //  blurStyle: BlurStyle.inner,
                    offset: Offset(3, 3)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 8.41,
                    left: 10.48,
                  ),
                  child: Text('Designation    :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Started From  :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Gender             :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Reporting To   :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Expiry Date      :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('DOB                   :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Location            :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Age                     :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Address             :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 7.41,
                    left: 10.48,
                  ),
                  child: Text('Mobile No         :',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
