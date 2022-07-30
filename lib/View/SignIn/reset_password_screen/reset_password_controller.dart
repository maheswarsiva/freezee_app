import 'package:flutter/cupertino.dart';
import 'package:freeze_app/http/repository/login_repository.dart';
import 'package:freeze_app/http/response/GenericResponse.dart';
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

    change(null, status: RxStatus.success());
  }

  void changePassword() async {
    change(null, status: RxStatus.loading());
    GenericResponse? response = await LoginRepository()
        .changePassword(email, otp, passwordController.text.trim());
    if (response != null) {
      change(null, status: RxStatus.success());

      Get.offAllNamed('/');
    } else {
      change(null, status: RxStatus.error());
    }
  }
}
