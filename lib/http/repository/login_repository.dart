import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freeze_app/Model/core/snackbar.dart';
import 'package:freeze_app/Model/register_model.dart';
import 'package:freeze_app/http/dio.dart';
import 'package:freeze_app/http/httpurls.dart';
import 'package:freeze_app/http/response/GenericResponse.dart';
import 'package:freeze_app/http/response/UserLoginResponse.dart';
import 'package:freeze_app/http/response/UserRegisterResponse.dart';
import 'package:freeze_app/shared/sharedservice.dart';
import 'package:freeze_app/utils/apputils.dart';
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

  Future<UserLoginResponse?> login(String? email, String? password) async {
    String url = HttpUrls.login;
    UserLoginResponse? userLoginResponse;

    final response =
        await dio().post(url, data: {"email": email, "password": password});

    if (response.statusCode == 200) {
      PreferenceHelper.setPreference("email", email);
      PreferenceHelper.setPreference("password", password);
      userLoginResponse =
          UserLoginResponse.fromJson(response.data as Map<String, dynamic>);
      return userLoginResponse;
    } else {
      AppUtils.showToast(response?.data["err"] ?? 'Something Went wrong',
          color: Colors.red);
    }
    return userLoginResponse;
  }

  Future<GenericResponse?> sendEmailOtp(String? email) async {
    String url = HttpUrls.getotp;
    GenericResponse? genericResponse;

    final response = await dio().post(url, data: {"email": email});

    if (response.statusCode == 200) {
      genericResponse =
          GenericResponse.fromJson(response.data as Map<String, dynamic>);
      AppUtils.showToast(response.data["success"]);
    } else {
      AppUtils.showToast(response?.data["err"] ?? 'Something Went wrong',
          color: Colors.red);
    }
    return genericResponse;
  }

  Future<bool> emailVerification(String? email) async {
    String url = HttpUrls.getotp;
    UserLoginResponse? userLoginResponse;

    final response = await dio().post(url, data: {"email": email});

    if (response.statusCode == 200) {
      userLoginResponse =
          UserLoginResponse.fromJson(response.data as Map<String, dynamic>);
      AppUtils.showToast(response.data["success"]);
      return true;
    } else {
      showSnackBar(context: Get.context!, message: "", bgColor: Colors.red);
      return false;
    }
  }
}
