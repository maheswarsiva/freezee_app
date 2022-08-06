import 'package:freeze_app/http/repository/home_repository.dart';
import 'package:freeze_app/http/response/get_all_target_response/get_all_target_response.dart';
import 'package:freeze_app/http/response/get_role_response.dart';
import 'package:freeze_app/http/response/role_type_response.dart';
import 'package:freeze_app/locator.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  GetRoleResponse? getRoleResponse;

  GetAllTargetResponse? getAllTargetResponse;

  RoleTypeResponse? roleTypeResponse;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    await getRoles();
  }

  Future<void> getRoles() async {
    change(null, status: RxStatus.loading());

    Roles.userRoleResponse.value = await HomeRepository.getAllRoles();
    getAllTargetResponse = await HomeRepository.getAllTargets();
    change(null, status: RxStatus.success());
  }
}
