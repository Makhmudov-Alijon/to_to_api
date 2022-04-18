import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/model/profil_model/profil_model.dart';

import 'profil_logic.dart';

class ProfilPage extends StatelessWidget {
  final logic = Get.find<ProfilLogic>();
  static const String route = "/profil";
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
            : _userList()),
      ),
    );
  }
  Widget _userList() {
    RxList<ProfilModel> users = logic.users;

    List<Widget> usersWidget = [];

    for (int i = 0; i < users.length; i++) {
      usersWidget.add(_userItem(users[i],));
    }

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: usersWidget,
        ),
      ),
    );
  }

  Widget _userItem(ProfilModel model,) {

    return SingleChildScrollView(

      child: Column(

        children: [
          SizedBox(height: 20,),
         Container(
           child: Text("Name :  ${ model.name}"),
         ),
          Container(
            child: Text("Email :  ${ model.email}"),
          ),
          Container(
            child: Text("Age :  ${ model.age.toString()}"),
          ),
          Container(
            child: Text("Creat :  ${ model.createdAt}"),
          ),
        ],
      ),
    );

  }
}
