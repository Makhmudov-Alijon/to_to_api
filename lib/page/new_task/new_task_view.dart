import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:to_do/page/profil/profil_view.dart';
import 'package:to_do/page/register/register_view.dart';

import '../../repository/task_repo/task_repo.dart';
import '../../repository/token_stor.dart';
import '../get_all_task/get_all_task_view.dart';
import 'new_task_logic.dart';

class New_taskPage extends StatelessWidget {
  final logic = Get.put(New_taskLogic());

  final _taskcontroller = TextEditingController();
  static const String route = "/newtask";
  TaskRepoClass taskrepoClass = TaskRepoClass();
  final tokenstor=TokenStroge();
  final box = Hive.box('token');
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return GetBuilder<New_taskLogic>(
        builder: (logic) {
      return AdvancedDrawer(
        backdropColor: Colors.blueGrey,
        controller: logic.advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 700),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(

          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),

        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.deepPurple[800],
            floatingActionButtonLocation: FloatingActionButtonLocation
                .centerFloat,
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.pink,
              onPressed: () async {
                taskrepoClass.taskPost(_taskcontroller.text);
                _taskcontroller.clear();
              },
            ),
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,

              centerTitle: true,
              leading: IconButton(
                onPressed: logic.handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: logic.advancedDrawerController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: Duration(milliseconds: 250),
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        key: ValueKey<bool>(value.visible),
                        color: Colors.black,
                      ),
                    );
                  },
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .1,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                              MediaQuery
                                  .of(context)
                                  .size
                                  .aspectRatio * 100),
                          bottomLeft: Radius.circular(
                              MediaQuery
                                  .of(context)
                                  .size
                                  .aspectRatio * 100),
                        )),
                    child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery
                              .of(context)
                              .size
                              .height * .2,
                          // top: MediaQuery.of(context).size.height * ,
                        ),
                        child: Text('To Do', style: GoogleFonts.pacifico(
                          fontSize: 40, fontWeight: FontWeight.w900,),)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * .03,
                      left: MediaQuery
                          .of(context)
                          .size
                          .height * .03,
                      right: MediaQuery
                          .of(context)
                          .size
                          .height * .03,
                    ),
                    child: TextField(
                      controller: _taskcontroller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintText: 'add task',
                        hintStyle: GoogleFonts.pacifico(
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * .515,
                      left: MediaQuery
                          .of(context)
                          .size
                          .width * .6,
                    ),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .06,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .3,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.white))),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple[800])),
                      child: Text('all task'),
                      onPressed: () {
                        Get.toNamed(Get_all_taskPage.route);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        drawer: SafeArea(
          child: Container(
            child: ListTileTheme(
              textColor: Colors.white,
              iconColor: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 128.0,
                    height: 128.0,
                    margin: const EdgeInsets.only(
                      top: 24.0,

                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),

                  ),

                  ListTile(
                    onTap: () {
                      Get.toNamed(ProfilPage.route);
                    },
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('Profile'),
                  ),

                  Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.white))),
                        backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple[800])),
                    child: Text('Logout'),
                    onPressed: () {
                      box.clear();
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                    },
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: Text('Terms of Service | Privacy Policy'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
