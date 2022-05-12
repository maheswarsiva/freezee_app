import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Bottomnavpage/bottom_nav.dart';
import 'package:freeze_app/app_color.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/logo.dart';
import '../Bottomnavpage/List_of_pages/Innovation_page.dart';

class PasswordSetup extends StatefulWidget {
  const PasswordSetup({Key? key}) : super(key: key);

  @override
  State<PasswordSetup> createState() => _PasswordSetupState();
}

class _PasswordSetupState extends State<PasswordSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 33.h,
          ),

          logo(),
          Text(
            "Welcome to the RITE Foundation",
            style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xFF65019A),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Sign in to continue",
            style: TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
          ),
          SizedBox(
            height: 180.h,
          ),

          StackContainer(
            height: 240.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Textfield1(
                    titlle: 'NEW PASSWORD',
                    icon: Icon(
                      Icons.vpn_key_outlined,
                      color: AppColors.iconColor,
                    )),
                Textfield1(
                    titlle: 'NEW PASSWORD',
                    icon: Icon(
                      Icons.vpn_key_outlined,
                      color: AppColors.iconColor,
                    )),
                InkWell(
                  child: Container(
                      height: 44.h,
                      width: 290.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.w),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffA202F6),
                                blurRadius: 7.w,
                                offset: Offset(1, 1)),
                            BoxShadow(
                                color: Color(0xff28003),
                                blurRadius: 2.w,
                                offset: Offset(-1, -1)),
                            BoxShadow(
                                color: Color(0xff28003E),
                                blurRadius: 2.w,
                                offset: Offset(3, -3)),
                            BoxShadow(
                                color: Color(0xff28003E),
                                blurRadius: 2.w,
                                offset: Offset(-3, 3)),
                            BoxShadow(
                                color: Color(0xffA202F6),
                                blurRadius: 2.w,
                                //blurStyle: BlurStyle.inner,
                                offset: Offset(-3, -3)),
                            BoxShadow(
                                color: Color(0xff28003E),
                                blurRadius: 2.w,
                                //  blurStyle: BlurStyle.inner,
                                offset: Offset(3, 3)),
                          ],
                          color: Color(0xff65019A)),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 14.sp),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BottomNav()));
                  },
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          )
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     // ignore: sized_box_for_whitespace
          //     Container(
          //         height: 300,
          //         width: double.maxFinite,
          //         decoration: const BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(20),
          //               topRight: Radius.circular(20)),
          //           color: Color(0xFF393838),
          //         ),
          //         child: Column(children: [
          //           const Padding(
          //             padding: EdgeInsets.only(
          //               top: 45,
          //             ),
          //           ),
          //           // ignore: sized_box_for_whitespace
          //           SizedBox(
          //             width: 350,
          //             child: TextField(
          //               decoration: InputDecoration(
          //                 filled: true,
          //                 fillColor: const Color(0xFF2B2B2B),
          //                 border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(10.0)),
          //                 prefixIcon: const Icon(Icons.vpn_key,
          //                     color: Color(0xFF939F9C)),
          //                 labelText: 'New Password',
          //                 labelStyle: const TextStyle(color: Color(0xFF939F9C)),
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 15,
          //           ),
          //           SizedBox(
          //             width: 350,
          //             child: TextField(
          //               decoration: InputDecoration(
          //                 filled: true,
          //                 fillColor: const Color(0xFF2B2B2B),
          //                 border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(10.0)),
          //                 prefixIcon: const Icon(Icons.vpn_key,
          //                     color: Color(0xFF939F9C)),
          //                 labelText: 'Re-Type Password',
          //                 labelStyle: const TextStyle(color: Color(0xFF939F9C)),
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 15,
          //           ),
          //
          //           SizedBox(
          //             height: 60,
          //             width: 350,
          //             child: ElevatedButton(
          //                 onPressed: () {
          //
          //                 },
          //                 style: ElevatedButton.styleFrom(
          //                   side: const BorderSide(
          //                       color: Color(0xFF65019A), width: 5),
          //                   shadowColor: const Color(0xFF65019A),
          //                   elevation: 10,
          //                   primary: const Color(0xFF65019A),
          //                   shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(15.0),
          //                   ),
          //                 ),
          //                 // ignore: sized_box_for_whitespace
          //                 child: const Text(
          //                   "Create Password",
          //                   style: TextStyle(
          //                     fontSize: 18,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 )),
          //           ),
          //         ])),
          //   ],
          // )
        ],
      ),
    );
  }
}
