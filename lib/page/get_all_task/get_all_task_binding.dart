import 'package:get/get.dart';

import 'get_all_task_logic.dart';

class Get_all_taskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Get_all_taskLogic());
  }
}
