import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:to_do/model/delete_task_model.dart';
import 'package:to_do/model/get_all_task_model/get_all.dart';
import 'package:to_do/model/get_all_task_model/get_data.dart';
import 'package:to_do/model/task_update_model.dart';

import '../../repository/api_repostry.dart';
import '../../repository/token_stor.dart';

class Get_all_taskLogic extends GetxController {
  final tokenstor = TokenStroge();
  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<GetData> users = RxList();
  final controller = TextEditingController();

  @override
  void onReady() async {
    super.onReady();
    getTasks();
  }

  void updateTask(String id) async {
    String edit = controller.text;
    TaskUpdateModel taskUpdateModel = TaskUpdateModel(edit);
    await restClient.putTask("application/json",
        "Bearer ${tokenstor.gettoken().toString()}", id, taskUpdateModel);
    getTasks();
  }

  void deleteTask(String id) async {
    await restClient.deleteTask(
        "application/json", "Bearer ${tokenstor.gettoken().toString()}", id);
    getTasks();
  }

  void getTasks() async {
    loading(true);

    GetTaskAll listModel = await restClient.getAllTask(
        'application/json', "Bearer ${tokenstor.gettoken().toString()}");

    loading(false);
    users(listModel.data);
  }
}
