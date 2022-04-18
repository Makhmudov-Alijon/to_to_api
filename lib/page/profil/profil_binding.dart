import 'package:get/get.dart';

import 'profil_logic.dart';

class ProfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilLogic());
  }
}
