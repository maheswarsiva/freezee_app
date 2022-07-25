import 'package:flutter/cupertino.dart';
import 'package:freeze_app/Model/register_model.dart';
import 'package:freeze_app/http/response/UserRegisterResponse.dart';
import 'package:get/get.dart';

import '../../../http/repository/login_repository.dart';

class RegisterController extends GetxController with StateMixin {
  List<String> professionalData = [
    'industrial',
    'government',
    'domestic',
    'distributors',
    'dealers',
    'Technician',
    'B.partners',
    'advisor',
    'admin',
    'instituion',
    'trust',
    'association',
    'students',
    'public',
    'job seakers'
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController panController = TextEditingController();
  final TextEditingController professionalController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  String? selectedProfession;

  static Future<UserRegisterResponse?> registerUser(
      UserRegister userModel) async {
    UserRegisterResponse? userRegisterresponse =
        await LoginRepository.signup(userModel);
    if (userRegisterresponse != null) {
      Get.offAllNamed('/login');
    } else {
      Get.back();
    }
  }
}
