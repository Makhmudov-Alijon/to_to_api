import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../repository/task_repo/task_repo.dart';
import '../../repository/token_stor.dart';
import '../get_all_task/get_all_task_view.dart';
import 'task_logic.dart';

class TaskPage extends StatelessWidget {
  final logic = Get.put(TaskLogic());
  static const String route = "/task";
  final _taskcontroller=TextEditingController();
  TaskRepoClass taskrepoClass = TaskRepoClass();
  final tokenstor=TokenStroge();
  final box = Hive.box('token');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('To Do'),
        ),
        body: Column(
          children: [
            SizedBox(height: 40,),
            TextField(
              controller: _taskcontroller,
            ),
            SizedBox(height: 40,),
            RaisedButton(
              child: Text('save'),
                onPressed: (){
                  taskrepoClass.taskPost(_taskcontroller.text);
                  _taskcontroller.clear();

                  print(tokenstor.gettoken());
                }),

          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.save),
          label: Text("Get All Task"),
          backgroundColor: Colors.deepPurple,

          onPressed: (){
            Get.toNamed(Get_all_taskPage.route);
          },
        ),
      ),
    );
  }
}
