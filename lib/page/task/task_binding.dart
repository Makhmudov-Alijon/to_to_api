import 'package:get/get.dart';

import 'task_logic.dart';

class TaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskLogic());
  }
}
