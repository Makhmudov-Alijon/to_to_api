import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:to_do/model/profil_model/profil_model.dart';

import '../../repository/api_repostry.dart';
import '../../repository/token_stor.dart';

class ProfilLogic extends GetxController {
  final tokenstor = TokenStroge();
  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<ProfilModel> users = RxList();


  @override
  void onReady() async {
    super.onReady();
    getTasks();
  }
  void getTasks() async {
    loading(true);

    ProfilModel listModel = await restClient.user(
        'application/json', "Bearer ${tokenstor.gettoken().toString()}");
    loading(false);
    users.add(listModel);
  }
}
