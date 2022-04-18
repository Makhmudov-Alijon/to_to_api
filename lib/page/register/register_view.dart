import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:to_do/page/new_task/new_task_view.dart';

import '../../repository/register_repo/repo.dart';
import '../../repository/token_stor.dart';


import 'register_logic.dart';

class RegisterPage extends StatelessWidget {
  final logic = Get.find<RegisterLogic>();

  static const String route = "/register";
  var _namecontroller = TextEditingController();
  var _emailcontroller = TextEditingController();
  var _passwordcontroller = TextEditingController();
  var _agecontroller = TextEditingController();
  RepoClass repoClass = RepoClass();
  final tokenstor = TokenStroge();
  final box = Hive.box('token');
  bool _passwordVissbl = true;

  @override
  Widget build(BuildContext context) {
    if (box.isEmpty == true) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurple[800],
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .13,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(
                            MediaQuery.of(context).size.aspectRatio * 100),
                        bottomLeft: Radius.circular(
                            MediaQuery.of(context).size.aspectRatio * 100),
                      )),
                  child: Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * .2,
                        // top: MediaQuery.of(context).size.height * ,
                      ),
                      child: Text(
                        'To Do',
                        style: GoogleFonts.pacifico(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05,
                    left: MediaQuery.of(context).size.height * .05,
                  ),
                  child: Text(
                    'Register',
                    style: GoogleFonts.pacifico(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .03,
                    left: MediaQuery.of(context).size.height * .03,
                    right: MediaQuery.of(context).size.height * .03,
                  ),
                  child: TextField(
                    controller: _namecontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'User Name',
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
                    top: MediaQuery.of(context).size.height * .03,
                    left: MediaQuery.of(context).size.height * .03,
                    right: MediaQuery.of(context).size.height * .03,
                  ),
                  child: TextField(
                    controller: _emailcontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Email',
                      hintStyle: GoogleFonts.pacifico(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .03,
                    left: MediaQuery.of(context).size.height * .03,
                    right: MediaQuery.of(context).size.height * .03,
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _passwordcontroller,
                    obscureText: !_passwordVissbl,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.pacifico(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        suffixIcon: IconButton(
                          color: Colors.white.withOpacity(0.7),
                          icon: Icon(_passwordVissbl
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            _passwordVissbl = !_passwordVissbl;
                          },
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .03,
                    left: MediaQuery.of(context).size.height * .03,
                    right: MediaQuery.of(context).size.height * .03,
                  ),
                  child: TextField(
                    controller: _agecontroller,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Age',
                      hintStyle: GoogleFonts.pacifico(color: Colors.white),
                      counterStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .3,
                    top: MediaQuery.of(context).size.width * .1,
                  ),
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.white))),
                        backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple[800])),
                    child: Text(
                      'Register',
                      style: GoogleFonts.pacifico(),
                    ),
                    onPressed: () async {
                      repoClass.demoPost(
                        _namecontroller.text,
                        _emailcontroller.text,
                        _passwordcontroller.text,
                        int.parse(_agecontroller.text),
                      );
                      print(tokenstor.gettoken());
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>New_taskPage()));
                      _namecontroller.clear();
                      _agecontroller.clear();
                      _emailcontroller.clear();
                      _passwordcontroller.clear();
                    },
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .20,
                        top: MediaQuery.of(context).size.width * .02,
                      ),
                      child: Text(
                        "Don't have an account ?",
                        style: GoogleFonts.pacifico(color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .01,
                        top: MediaQuery.of(context).size.width * .01,
                      ),
                      child: TextButton(
                        style: ButtonStyle(),
                        child: Text(
                          'Login In ',
                          style: GoogleFonts.pacifico(
                              color: Colors.white,
                              fontSize: 17,
                              decoration: TextDecoration.underline),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return New_taskPage();
    }
  }
}
