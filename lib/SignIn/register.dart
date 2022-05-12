import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/SignIn/password_setup.dart';
import 'package:freeze_app/SignIn/signin.dart';
import 'package:freeze_app/app_color.dart';
import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';


import '../widgets/logo.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 33.h,
            // ),

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
              height: 10.h,
            ),
            StackContainer(
                height: 450.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Textfield1(
                        titlle: 'NAME',
                        icon: Icon(
                          Icons.person,
                          color: AppColors.iconColor,
                        )),
                    Textfield1(
                        titlle: 'MAIL',
                        icon: Icon(
                          Icons.mail_outline,
                          color: AppColors.iconColor,
                        )),

                    Textfield1(
                        titlle: 'PROFESSIONAL DETAILS',
                        icon: Icon(
                          Icons.feed,
                          color: AppColors.iconColor,
                        )),
                    Textfield1(
                        titlle: 'AADHAR CARD',
                        icon: Icon(
                          Icons.text_snippet_rounded,
                          color: AppColors.iconColor,
                        )), Textfield1(
                        titlle: 'PAN CARD',
                        icon: Icon(
                          Icons.credit_card_rounded,
                          color: AppColors.iconColor,
                        )),
                    Textfield1(
                        titlle: 'PHONE NUMBER',
                        icon: Icon(
                          Icons.phone_android_rounded,
                          color: AppColors.iconColor,
                        )),
                    SizedBox(height: 5.h,),
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
                                    color:Color(0xff28003),
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


                              color: Color(0xff65019A)
                          ),
                          child:Center(
                            child:   Text('Register',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14.sp),) ,
                          )



                      ),
                      onTap: (){



                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Signin()));
                      },

                    ),
                    SizedBox(height: 5.h,)
                  ],
                ))
            // Container(
            //   height: 550,
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
            //           top: 25,
            //         ),
            //       ),
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
            //             labelText: 'Name',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       SizedBox(
            //         width: 350,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon: const Icon(Icons.email_rounded,
            //                 color: Color(0xFF939F9C)),
            //             labelText: 'Email',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       SizedBox(
            //         width: 350,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon:
            //                 const Icon(Icons.feed, color: Color(0xFF939F9C)),
            //             labelText: 'Professional Details',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       SizedBox(
            //         width: 350,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon: const Icon(Icons.text_snippet_rounded,
            //                 color: Color(0xFF939F9C)),
            //             labelText: 'Aadhar Card',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       SizedBox(
            //         width: 350,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon: const Icon(Icons.credit_card_rounded,
            //                 color: Color(0xFF939F9C)),
            //             labelText: 'PAN Card',
            //             labelStyle: const TextStyle(color: Color(0xFF939F9C)),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       SizedBox(
            //         width: 350,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: const Color(0xFF2B2B2B),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10.0)),
            //             prefixIcon: const Icon(Icons.phone_android_rounded,
            //                 color: Color(0xFF939F9C)),
            //             labelText: 'Mobile Number',
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
            //                     builder: (context) => const PasswordSetup()),
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
            //             child: const Text(
            //               "Register",
            //               style: TextStyle(
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             )),
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
