import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freeze_app/Model/core/snackbar.dart';
import 'package:freeze_app/Model/register_model.dart';
import 'package:freeze_app/http/httpurls.dart';
import 'package:freeze_app/http/response/UserRegisterResponse.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  static Future<UserRegisterResponse?> signup(UserRegister user) async {
    UserRegisterResponse? userRegisterResponse;

    var client = http.Client();
    try {
      var response = await client.post(Uri.parse(HttpUrls.register),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
          body: jsonEncode({
            "name": user.name,
            "email": user.email,
            "password": user.password,
            "aadhar": user.aadhar,
            "phone": user.phone,
            "pan": user.pan,
          }));

      if (response.statusCode == 200 || response.statusCode == 201) {
        showSnackBar(context: Get.context!, message: 'Registered Successfully');

        userRegisterResponse = UserRegisterResponse.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
      } else if (response.statusCode == 400) {
        showSnackBar(
            context: Get.context!,
            message: "Email Already Register",
            bgColor: Colors.red);
      } else {
        print(response.statusCode);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
      }
    } catch (e) {
      showSnackBar(
          context: Get.context!, message: e.toString(), bgColor: Colors.red);
    }
    return userRegisterResponse;
  }
}
