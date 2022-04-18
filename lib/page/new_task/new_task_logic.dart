import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

class New_taskLogic extends GetxController {
  var advancedDrawerController = AdvancedDrawerController();
   handleMenuButtonPressed() {
    advancedDrawerController.showDrawer();
    update();
  }
}
