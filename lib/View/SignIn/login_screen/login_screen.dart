import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/SignIn/login_screen/login_controller.dart';
import 'package:freeze_app/View/SignIn/password_setup.dart';
import 'package:freeze_app/widgets/logo.dart';
import 'package:freeze_app/widgets/textfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/stackContainer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // String? _email, _password;
  bool isloading = false;

  bool updateandsave() {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GetBuilder<LoginController>(builder: (logic) {
      return Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 22.h,
                  ),

                  logo(),
                  SizedBox(
                    height: 11.h,
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
                    style: TextStyle(fontSize: 12.sp, color: Color(0xFF939F9C)),
                  ),
                  SizedBox(
                    height: _size.height * 0.14,
                  ),
                  StackContainer(
                    height: 420.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextField(
                          titlle: 'Email',
                          icon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF939F9C),
                          ),
                          onChanged: (value) {
                            // _email = value!;
                            // print(_email.toString());
                          },
                          validationRules: ['required', 'email'],
                          obscureText: false,
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: null,
                          textInputAction: TextInputAction.next,
                        ),
                        CustomTextField(
                            titlle: 'Password',
                            icon: Icon(
                              Icons.vpn_key_outlined,
                              color: Color(0xFF939F9C),
                            ),
                            onChanged: (value) {
                              // _password = value!;
                              // print(_password);
                            },
                            validationRules: ["required"],
                            obscureText: !showPassword,
                            keyboardType: TextInputType.emailAddress,
                            suffixIcon: IconButton(
                              onPressed: () =>
                                  setState(() => showPassword = !showPassword),
                              icon: Icon(
                                showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: showPassword
                                    ? Color(0xff65019A)
                                    : AppColors.iconColor,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            controller: password),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          splashColor: Colors.white,
                          onTap: () async {
                            if (updateandsave()) {
                              print(updateandsave());
                            }
                          },
                          child: Container(
                              height: 44,
                              width: 290,
                              alignment: Alignment.center,
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
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(children: <Widget>[
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(
                                    left: 37.0.w, right: 15.0.w),
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
                                margin: EdgeInsets.only(
                                    left: 15.0.w, right: 37.0.w),
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
                          splashColor: Colors.grey,
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
                            Get.to(() => PasswordSetup());
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (_) => PasswordSetup()));
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
                                    Get.toNamed("/register");
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
          ),
        ),
      );
    });
  }
}
