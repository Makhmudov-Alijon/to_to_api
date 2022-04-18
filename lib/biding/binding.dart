import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../repository/api_repostry.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RestClient(Dio()));
  }
}
