import 'package:flutter/material.dart';
import 'package:freeze_app/ModelView/database/datasourcemodel.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    Authenticate_user()
        .login(emailTextController.text.trim(), passwordController.text.trim())
        .then((value) {
      if (value == null) {
        Get.snackbar(
            "The user is not approved yet.", emailTextController.text.trim());

        change(null);
      } else {
        //Get.to(() => BottomNav());
        change(null);
      }
    });
  }
}
