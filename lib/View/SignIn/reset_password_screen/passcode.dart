import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_app/Model/Theme/app_color.dart';
import 'package:freeze_app/View/SignIn/register_screen/email_verification_screen/email_verification_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class OTPWidget extends StatefulWidget {
  final bool? forgotPassword;
  final bool? register;
  Function onSubmit;

  OTPWidget(this.onSubmit, {Key? key, this.forgotPassword, this.register})
      : super(key: key);

  @override
  _OTPWidgetState createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  FocusNode textFirstFocusNode = FocusNode();
  FocusNode textSecondFocusNode = FocusNode();
  FocusNode textThirdFocusNode = FocusNode();
  FocusNode textFourthFocusNode = FocusNode();

  RxInt secondsRemaining = 60.obs;
  RxBool enableResend = false.obs;

  TextEditingController otpcontroller = TextEditingController();

  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Reducing the seconds remaining by using a timer
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      print(secondsRemaining.value);
      if (secondsRemaining.value != 0) {
        secondsRemaining.value--;
      } else {
        enableResend.value = true;

        secondsRemaining.value = 60;
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: Center(
          child: Card(
        child: Container(
          // height: 194.h,
          // width: 343.92.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // const SizedBox(
                  //   height: 34.6,
                  // ),
                  // const Text(
                  //   'OTP Verification',
                  //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  // ),
                  // const SizedBox(
                  //   height: 37.83,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _otp(1, textFirstFocusNode),
                      const SizedBox(
                        width: 15.73,
                      ),
                      _otp(2, textSecondFocusNode),
                      const SizedBox(
                        width: 15.73,
                      ),
                      _otp(3, textThirdFocusNode),
                      const SizedBox(
                        width: 15.73,
                      ),
                      _otp(4, textFourthFocusNode),
                      const SizedBox(
                        width: 15.73,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26.84,
                  ),
                  Obx(() {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "00:${secondsRemaining.value.toString()} sec",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.hintTextColor),
                          ),
                          TextButton(
                            child: Text(
                              'Re-send OTP',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: secondsRemaining.value == 60
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                            onPressed: secondsRemaining.value == 60
                                ? () {
                                    EmailVerificationController controller =
                                        Get.find<EmailVerificationController>();
                                    controller.emailVerification();
                                    timer = Timer.periodic(
                                        const Duration(seconds: 1), (_) {
                                      print(secondsRemaining.value);
                                      if (secondsRemaining.value != 0) {
                                        secondsRemaining.value--;
                                      } else {
                                        enableResend.value = true;
                                        secondsRemaining.value = 60;
                                        timer.cancel();
                                      }
                                    });
                                  }
                                : null,
                          )
                        ],
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 20.0, top: 0),
              //     child: _closeBox(),
              //   ),
              // )
            ],
          ),
        ),
      )),
    );
  }

  Widget _otp(int index, FocusNode focusNode) => Container(
        height: 41.94,
        width: 41.94,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(185, 185, 185, 0.9),
                  spreadRadius: -8,
                  offset: Offset(3, 3)),
              BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.9),
                  spreadRadius: -6,
                  offset: Offset(-3, -3)),
              BoxShadow(
                  color: Color.fromRGBO(185, 185, 185, 0.2),
                  spreadRadius: -6,
                  offset: Offset(3, -3)),
              BoxShadow(
                  color: Color.fromRGBO(185, 185, 185, 0.2),
                  spreadRadius: -6,
                  offset: Offset(-3, 3)),
              BoxShadow(
                  color: Color.fromRGBO(185, 185, 185, 0.5),
                  spreadRadius: 2,
                  offset: Offset(-1, -1),
                  blurRadius: 10,
                  blurStyle: BlurStyle.inner),
              BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.3),
                  spreadRadius: 2,
                  offset: Offset(1, 1),
                  blurRadius: 10,
                  blurStyle: BlurStyle.inner),
            ]),
        // child: Obx(
        //       () =>PinCodeTextField(
        //     enablePinAutofill: false,
        //     appContext: context,
        //     onChanged: (String value) {
        //       // user.otp = value;
        //     },
        //     validator: (String? value) {},
        //     onCompleted: (String value) async {
        //       AppUtils.hideKeyBoard(context);
        //       if (controller.otpTextController.text.length == 6) {
        //         bool isOtpVerified =
        //             await controller.verifyOtp() ?? false;
        //
        //         // FIXME so far otp generate api is not working so 111111 is hardcoded to route next page
        //
        //         if (isOtpVerified ||
        //             controller.otpTextController.text.trim() ==
        //                 "111111") {
        //           controller.timer.cancel();
        //
        //           if (controller.userType.value ==
        //               UserType.newUser) {
        //             Get.toNamed('/terms_conditions_screen');
        //           } else if (controller.userType.value ==
        //               UserType.returningUser) {
        //             Get.toNamed('/set_pin_screen');
        //           }
        //         } else {
        //           controller.updateErrorValue();
        //           controller.otpTextController.clear();
        //           if (controller.attemptCount.value == 3) {
        //             AppUtils.showErrorSnackBar(context,
        //                 'Your number has been blocked for 6 hours contact support.');
        //             controller.updateIscontact();
        //           } else {
        //             AppUtils.showSnackBar(context,
        //                 '\n${3 - controller.attemptCount.value} attempts remaining\n');
        //           }
        //           if (controller.attemptCount.value != 3) {
        //             controller.increaseAttemptCount();
        //           }
        //         }
        //       }
        //     },
        //     length: 6,
        //     textStyle: Theme.of(context)
        //         .textTheme
        //         .headline5!
        //         .copyWith(
        //         color:
        //         ColorResource.getBlackTextColor(context)),
        //     animationType: AnimationType.scale,
        //     animationDuration: const Duration(milliseconds: 300),
        //     keyboardType: TextInputType.number,
        //     controller: controller.otpTextController,
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     obscureText: true,
        //     pinTheme: PinTheme(
        //         shape: PinCodeFieldShape.box,
        //         borderWidth: 1,
        //         borderRadius: BorderRadius.circular(8),
        //         inactiveColor: controller.errorValue.value
        //             ? ColorResource.colorF92538
        //             : ColorResource.color222222,
        //         selectedColor: controller.errorValue.value
        //             ? ColorResource.colorF92538
        //             : ColorResource.color222222,
        //         activeColor: controller.errorValue.value
        //             ? ColorResource.colorF92538
        //             : ColorResource.color222222,
        //         fieldHeight: 55,
        //         fieldWidth: 50,
        //         errorBorderColor: ColorResource.colorF92538),
        //   ),
        // ),,
      );

  Widget _closeBox() => Container(
        width: 42,
        height: 36,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(2, 2),
              ),
            ]),
        child: Center(
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.clear,
              size: 20,
              color: Color.fromRGBO(96, 108, 103, 1),
            ),
          ),
        ),
      );
}
