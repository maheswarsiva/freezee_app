import 'package:flutter/material.dart';
import 'package:freeze_app/http/response/get_all_target_response/get_all_target_response.dart';
import 'package:freeze_app/http/response/get_role_response.dart';
import 'package:freeze_app/http/response/role_type_response.dart';

import '../../utils/apputils.dart';
import '../dio.dart';
import '../httpurls.dart';

class HomeRepository {
  static Future<GetRoleResponse?> getRolesCount() async {
    String url = HttpUrls.getRoles;
    GetRoleResponse? getRoleResponse;

    final response = await dio().get(url);

    if (response.statusCode == 200) {
      getRoleResponse =
          GetRoleResponse.fromJson(response.data as Map<String, dynamic>);
    } else {
      AppUtils.showToast(response.data["err"] ?? 'Something Went wrong',
          color: Colors.red);
    }
    return getRoleResponse;
  }

  static Future<GetAllTargetResponse?> getAllTargets() async {
    String url = HttpUrls.getDataList;
    final response = await dio().get(url);

    GetAllTargetResponse? getAllTargetResponse;

    if (response.statusCode == 200) {
      getAllTargetResponse =
          GetAllTargetResponse.fromJson(response.data as Map<String, dynamic>);
    } else {
      AppUtils.showToast(response.data["err"] ?? 'Something Went wrong',
          color: Colors.red);
    }
    return getAllTargetResponse;
  }

   static Future<RoleTypeResponse?> getAllRoles() async {
    String url = HttpUrls.getDataList;
    final response = await dio().get(url);

    RoleTypeResponse? roleTypeResponse;

    if (response.statusCode == 200) {
      roleTypeResponse =
          RoleTypeResponse.fromJson(response.data as Map<String, dynamic>);
    } else {
      AppUtils.showToast(response.data["err"] ?? 'Something Went wrong',
          color: Colors.red);
    }
    return roleTypeResponse;
  }
}
