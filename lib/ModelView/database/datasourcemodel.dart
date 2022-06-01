import 'dart:convert';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freeze_app/widgets/appcache.dart';
import 'package:freeze_app/widgets/appurl.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Model/user_data.dart';
import '../../widgets/snackbar.dart';

class Authenticate_user {
  Future<bool> signup(User_register user) async {
    var client = http.Client();
    try {
      var response = await client.post(Uri.parse(AppResponsiveUrl.register),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
          body: jsonEncode({
            "name": user.name,
            "email": user.email,
            "password": user.password,
            "aadhar": user.aadhar,
            "phone": user.phone,
            "pan": user.pan,
            "professionalDetails": user.professional_details
            // "address": null,
            // "city": null,
            // "dob": null,
            // "imei": null,
            // "lastscanned": null,
            // "status": null,
            // "profilepic": user.profileUrl
          }));
      if (response.statusCode == 200) {
        print(response.body);
        showSnackBar(context: Get.context!, message: 'Registered Successfully');
        // Appcache.sharecache.setString('email', user.email);
        //   Appcache.sharecache.setString('firstName', user.firstName);
        //   Appcache.sharecache.setString('lastName', user.lastName);
        //   Appcache.sharecache.setString('phone', user.phone);

        return true;
      } else if (response.statusCode == 400) {
        showSnackBar(
            context: Get.context!,
            message: "Email Already Register",
            bgColor: Colors.red);
        return false;
      } else {
        print(response.statusCode);
        // LoginFailureResponse res = loginFailureResponseFromJson(response.body);
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return false;
      }
    } catch (e) {
      showSnackBar(
          context: Get.context!, message: e.toString(), bgColor: Colors.red);
      return false;
    }
  }

  Future<bool> login(String? email, String? password) async {
    try {
      var client = http.Client();

      var response = await client.get(
        Uri.parse(AppResponsiveUrl.login),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
      print(response.body);

      if (response.statusCode == 200) {
        var jsonString = response.body;
        List<User_register> users = getUserResponseFromJson(jsonString);

        for (var user in users) {
          if (user.email == email && user.password == password) {
            if (user.status != null) {
              Appcache.sharecache.setString("email", user.email);
              Appcache.sharecache.setString("password", user.password);
              Appcache.sharecache.setString("name", user.name);
              Appcache.sharecache.setString("phone", user.phone ?? "");
              Appcache.sharecache.setString("pan", user.pan);
              Appcache.sharecache.setString("aadhar", user.aadhar);
              Appcache.sharecache.setString("role", user.professional_details);

              if (user.status != null) {
                Appcache.sharecache.setString("status", user.status);
              }

              return user.status == true || user.status == 'true';
            } else {
              return false;
            }
          }
          showSnackBar(
              context: Get.context!,
              message: 'Email / Password doesn\'t exists',
              bgColor: Colors.red);
          return false;
        }
      } else {
        showSnackBar(
            context: Get.context!,
            message: 'Registration Failed',
            bgColor: Colors.red);
        return false;
      }
    } catch (e) {}
    return false;
  }
}
