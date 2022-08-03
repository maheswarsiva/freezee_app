import 'package:flutter/material.dart';

import '../../utils/apputils.dart';
import '../dio.dart';
import '../httpurls.dart';
import '../response/getRoleResponse.dart';

class HomeRepository {
  static Future<GetRoleResponse?> getRoles() async {
    String url = HttpUrls.getRoles;
    GetRoleResponse? getRoleResponse;

    final response = await dio().get(url);

    if (response.statusCode == 200 && response.data["success"] != null) {
      getRoleResponse =
          GetRoleResponse.fromJson(response.data as Map<String, dynamic>);
      AppUtils.showToast(response.data["success"]);
    } else {
      AppUtils.showToast(response?.data["err"] ?? 'Something Went wrong',
          color: Colors.red);
    }
    return getRoleResponse;
  }
}
