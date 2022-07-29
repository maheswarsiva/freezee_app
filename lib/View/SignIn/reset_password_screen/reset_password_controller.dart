import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController with StateMixin {
  final formKey = GlobalKey<FormState>();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late String otp;
  late String email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    if (Get.arguments != null) {
      otp = Get.arguments["otp"];
      email = Get.arguments["email"];
    }
  }
}
