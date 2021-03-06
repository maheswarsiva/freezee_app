import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/SignIn/password_setup.dart';

import 'package:freeze_app/SignIn/register.dart';
import 'package:freeze_app/app_color.dart';

import 'package:freeze_app/widgets/logo.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Bottomnavpage/bottom_nav.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: 33.h,
            ),

            StackContainer(
              height: 400.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Textfield1(
                      titlle: 'EMAIL',
                      icon: Icon(
                        Icons.email_outlined,
                        color: Color(0xFF939F9C),
                      )),
                  //  SizedBox(height: 20.h,),
                  Textfield1(
                      titlle: 'PASSWORD',
                      icon: Icon(
                        Icons.vpn_key_outlined,
                        color: Color(0xFF939F9C),
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
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
                    height: 10.h,
                  ),

                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 37.0.w, right: 15.0.w),
                          child: const Divider(
                            thickness: 1,
                            color: Color(0xffEBF0FF),
                            height: 10,
                          )),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Color(0xff9098B1),
                        fontSize: 14.sp,
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 15.0.w, right: 37.0.w),
                          child: const Divider(
                            thickness: 1,
                            color: Color(0xffEBF0FF),
                            height: 10,
                          )),
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),

                  InkWell(
                    child: Container(
                      height: 44.h,
                      width: 290.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.w),
                          border: Border.all(color: Color(0xffDE7FFF)),
                          color: Color(0xff2B2B2B)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/google.png'),
                          //  SvgPicture.asset('assets/images/google.svg'),
                          Text(
                            'Login with Google',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),

                  TextButton(
                    onPressed: () {
                      //forgot password screen

                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PasswordSetup()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF65019A),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an account?",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xFF939F9C),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Register()));
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF65019A)),
                            ))
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 300.h,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(20),
            //         topRight: Radius.circular(20)),
            //     color: Color(0xFF393838),
            //   ),
            //   child: Column(
            //     children: [
            //       const Padding(
            //         padding: EdgeInsets.only(
            //           top: 30,
            //         ),
            //       ),
            //       // ignore: sized_box_for_whitespace
            //       SizedBox(
            //         width: 350,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon: const Icon(Icons.person_outline_rounded,
            //                 color: Color(0xFF939F9C)),
            //             labelText: 'UserName',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 15,
            //       ),
            //       Container(
            //         width: 350,
            //         child: TextField(
            //           obscureText: true,
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon: const Icon(Icons.lock_outline,
            //                 color: Color(0xFF939F9C)),
            //             labelText: 'Password',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 15,
            //       ),
            //       SizedBox(
            //         height: 60,
            //         width: 350,
            //         child: ElevatedButton(
            //             onPressed: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => const Register()),
            //               );
            //             },
            //             style: ElevatedButton.styleFrom(
            //               side: const BorderSide(
            //                   color: Color(0xFF65019A), width: 5),
            //               shadowColor: const Color(0xFF65019A),
            //               elevation: 10,
            //               primary: const Color(0xFF65019A),
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(15.0),
            //               ),
            //             ),
            //             // ignore: sized_box_for_whitespace
            //             child: const Text("SignIn")),
            //       ),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //
            //       Row(children: <Widget>[
            //         Expanded(
            //           child: Container(
            //               margin:
            //                   const EdgeInsets.only(left: 10.0, right: 15.0),
            //               child: const Divider(
            //                 thickness: 3,
            //                 color: Colors.black,
            //                 height: 50,
            //               )),
            //         ),
            //         const Text("OR"),
            //         Expanded(
            //           child: Container(
            //               margin:
            //                   const EdgeInsets.only(left: 15.0, right: 10.0),
            //               child: const Divider(
            //                 thickness: 3,
            //                 color: Colors.black,
            //                 height: 50,
            //               )),
            //         ),
            //       ]),
            //       SizedBox(
            //         height: 60,
            //         width: 350,
            //         child: ElevatedButton(
            //             onPressed: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => const Register()),
            //               );
            //             },
            //             style: ElevatedButton.styleFrom(
            //               side: const BorderSide(
            //                   color: Color(0xFF65019A), width: 5),
            //               shadowColor: const Color(0xFF65019A),
            //               elevation: 10,
            //               primary: const Color(0xFF2B2B2B),
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(15.0),
            //               ),
            //             ),
            //             // ignore: sized_box_for_whitespace
            //             child: const Text("Google SignIn")),
            //       ),
            //       TextButton(
            //         onPressed: () {
            //           //forgot password screen
            //         },
            //         child: const Text(
            //           'Forgot Password?',
            //           style: TextStyle(
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold,
            //             color: Color(0xFF65019A),
            //           ),
            //         ),
            //       ),
            //       Center(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             const Text(
            //               "Don't Have an account?",
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 color: Color(0xFF939F9C),
            //               ),
            //             ),
            //             TextButton(
            //                 onPressed: () {},
            //                 child: const Text(
            //                   'Register',
            //                   style: TextStyle(
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.bold,
            //                       color: Color(0xFF65019A)),
            //                 ))
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
