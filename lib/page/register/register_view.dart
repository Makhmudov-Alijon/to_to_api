import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../repository/register_repo/repo.dart';
import '../../repository/token_stor.dart';

import '../task/task_view.dart';
import 'register_logic.dart';

class RegisterPage extends StatelessWidget {
  final logic = Get.find<RegisterLogic>();
  static const String route = "/register";
  var _namecontroller=TextEditingController();
  var _emailcontroller=TextEditingController();
  var _passwordcontroller=TextEditingController();
  var _agecontroller=TextEditingController();
  RepoClass repoClass = RepoClass();
  final tokenstor=TokenStroge();
  final box = Hive.box('token');
  @override
  Widget build(BuildContext context) {
    if(box.isEmpty==true){
      return  SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextField(
                    controller:_namecontroller,
                    decoration: InputDecoration(
                      hintText: 'userName'
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                        hintText: 'email'
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                        hintText: 'password'
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    controller: _agecontroller,
                    decoration: InputDecoration(
                        hintText: 'age'
                    ),
                  ),
                ),
                RaisedButton(
                    onPressed: (){
                      repoClass.demoPost(
                        _namecontroller.text,
                        _emailcontroller.text,
                        _passwordcontroller.text,
                        int.parse(_agecontroller.text),

                      );

                      print(tokenstor.gettoken());
                      Get.toNamed(TaskPage.route);
                    })
              ],
            ),
          ));
    }else{
      return TaskPage();
    }
  }
}
