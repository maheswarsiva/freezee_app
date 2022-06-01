import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:freeze_app/widgets/stackContainer.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../Theme/app_color.dart';
import '../../widgets/logo.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController name = TextEditingController();
  final TextEditingController aadhar = TextEditingController();
  final TextEditingController pan = TextEditingController();
  final TextEditingController professional = TextEditingController();

  final TextEditingController number = TextEditingController();
  final TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    logo(),
                    SizedBox(
                      height: 2.h,
                    ),
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
                      style:
                          TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 58.h,
              ),
              StackContainer(
                  height: 430.h,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Textfield1(
                          titlle: 'NAME',
                          icon: Icon(
                            Icons.person,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: name,
                          suffixicon: null,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            name.text != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) =>
                              s!.isEmpty ? 'Field required' : null,
                        ),
                        Textfield1(
                          titlle: 'MAIL',
                          icon: Icon(
                            Icons.mail_outline,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: email,
                          suffixicon: null,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            email.text != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) =>
                              !GetUtils.isEmail(s!) ? 'Email required' : null,
                        ),
                        Textfield1(
                          titlle: 'PROFESSIONAL DETAILS',
                          icon: Icon(
                            Icons.feed,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: professional,
                          suffixicon: null,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            professional != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) {},
                        ),
                        Textfield1(
                          titlle: 'AADHAR CARD',
                          icon: Icon(
                            Icons.text_snippet_rounded,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: aadhar,
                          suffixicon: null,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            aadhar != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (String) {},
                        ),
                        Textfield1(
                          titlle: 'PAN CARD',
                          icon: Icon(
                            Icons.credit_card_rounded,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: pan,
                          suffixicon: null,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (String) {},
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (String) {},
                        ),
                        Textfield1(
                          titlle: 'PHONE NUMBER',
                          icon: Icon(
                            Icons.phone_android_rounded,
                            color: AppColors.iconColor,
                          ),
                          controllerthis: number,
                          suffixicon: null,
                          keyboardType: null,
                          obscureText: false,
                          onChanged: (value) {
                            number.text != value;
                          },
                          suffixIcon: null,
                          textInputAction: null,
                          validator: (s) {
                            const String pattern = r'(^(?:[+0]9)?[0-9]{8}$)';

                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(s!)) {
                              return 'Mobile number is not valid';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 5.h,
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
                                        blurRadius: 3.w,
                                        offset: Offset(1, 1)),
                                    BoxShadow(
                                        color: Color(0xff28003),
                                        blurRadius: 1.w,
                                        offset: Offset(-1, -1)),
                                    BoxShadow(
                                        color: Color(0xff28003E),
                                        blurRadius: 1.w,
                                        offset: Offset(2, -2)),
                                    BoxShadow(
                                        color: Color(0xff28003E),
                                        blurRadius: 1.w,
                                        offset: Offset(-2, 2)),
                                    BoxShadow(
                                        color: Color(0xffA202F6),
                                        blurRadius: 1.w,
                                        //blurStyle: BlurStyle.inner,
                                        offset: Offset(-3, -3)),
                                    BoxShadow(
                                        color: Color(0xff28003E),
                                        blurRadius: 1.w,
                                        blurStyle: BlurStyle.inner,
                                        offset: Offset(2, 2)),
                                  ],
                                  color: Color(0xff65019A)),
                              child: Center(
                                child: Text(
                                  'Register',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14.sp),
                                ),
                              )),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 5.h,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
