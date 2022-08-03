import 'package:freeze_app/http/repository/home_repository.dart';
import 'package:freeze_app/http/response/getRoleResponse.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> getRoles() async {
    change(null, status: RxStatus.loading());

    GetRoleResponse? getRoleResponse = await HomeRepository.getRoles();

    if (getRoleResponse != null) {}
    change(null, status: RxStatus.success());
  }
}
