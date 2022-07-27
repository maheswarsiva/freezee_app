import 'package:flutter/cupertino.dart';
import 'package:freeze_app/http/repository/login_repository.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController with StateMixin {
  TextEditingController emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<bool> emailVerification() async {
    return await LoginRepository().sendEmailOtp(emailController.text.trim());
  }
}
