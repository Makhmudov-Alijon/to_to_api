import 'package:get/get.dart';

import 'new_task_logic.dart';

class New_taskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => New_taskLogic());
  }
}
