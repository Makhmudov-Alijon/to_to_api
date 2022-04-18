import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:to_do/model/task_model/get_task_model.dart';
import 'package:to_do/model/task_model/task_model.dart';
import 'package:to_do/repository/token_stor.dart';

import '../api_repostry.dart';
import '../register_repo/repo.dart';


class TaskRepoClass {
  late RestClient TaskmClient;
  final tokenstor=TokenStroge();

  TaskRepoClass() {
    TaskmClient = RestClient(Dio());
  }


  taskPost(String description,) async {
    TaskModel dataPost = TaskModel(description);
    GetTaskModel taskResponse = await TaskmClient.postTask(dataPost, 'application/json', ("Bearer ${tokenstor.gettoken().toString()}"));
    print(taskResponse.data.id);

    //You can use your login model data as per your requirements.
  }
}