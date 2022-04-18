

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/model/get_all_task_model/get_data.dart';

import 'get_all_task_logic.dart';

class Get_all_taskPage extends StatelessWidget {
  final logic = Get.find<Get_all_taskLogic>();
  static const String route = "/gettask";
 var context= BuildContext ;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.white,),
            onPressed: (){
              Get.back();
            },
          ),
        ),
        body: Obx(() => logic.loading.value
            ? Center(child: CircularProgressIndicator())
            : _userList(context)),
      ),
    );

  }
  Widget _userList(BuildContext context) {
    RxList<GetData> users = logic.users;

    List<Widget> usersWidget = [];

    for (int i = 0; i < users.length; i++) {
      usersWidget.add(_userItem(users[i],context));
    }

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: usersWidget,
        ),
      ),
    );
  }

  Widget _userItem(GetData model,BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SingleChildScrollView(

      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            margin:EdgeInsets.only(
              left: width*.05,
              right: width*.05
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(model.description),
                  subtitle: Text(model.createdAt),

                ),
                Row(
                  children: [
                    SizedBox(width: 250,),
                    Container(
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.edit,color: Colors.deepPurple,),
                          onPressed: (){
                            logic.controller.text=model.description;
                            Get.defaultDialog(
                                content: Column(
                                  children: [
                                    TextField(
                                      controller: logic.controller,
                                    ),
                                    Row(
                                      children: [
                                        RaisedButton(
                                            child: Text('cancel'),
                                            onPressed: (){
                                              Get.back();
                                            }),
                                        SizedBox(width: 20,),
                                        RaisedButton(
                                            child: Text('save'),
                                            onPressed: (){
                                              logic.updateTask(model.id);
                                              Get.back();
                                            })
                                      ],
                                    )
                                  ],
                                )
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.delete,color: Colors.deepPurple,),
                          onPressed: (){
                            Get.defaultDialog(
                                content: Column(
                                  children: [
                                    Text(model.description),
                                    Row(
                                      children: [
                                        RaisedButton(
                                            child: Text('cancel'),
                                            onPressed: (){
                                              Get.back();
                                            }),
                                        SizedBox(width: 20,),
                                        RaisedButton(
                                            child: Text('delete'),
                                            onPressed: (){
                                              logic.deleteTask(model.id);
                                              Get.back();
                                              // logic.getTasks();

                                            })
                                      ],
                                    )
                                  ],
                                )
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
