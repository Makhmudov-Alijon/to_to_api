import 'package:dio/dio.dart';


import '../../model/register_model/register_model.dart';
import '../../model/register_model/user_info.dart';
import '../api_repostry.dart';
import '../token_stor.dart';

class RepoClass {
  late RestClient mClient;
  final tokenstor=TokenStroge();
  RepoClass() {
    mClient = RestClient(Dio());
  }

  var token;
  demoPost(String name, String email, String password, int age,) async {
    RegisterModel dataPost = RegisterModel(name, email, password, age);
    UserInfo posResponse = await mClient.postUser(dataPost, 'application/json');
      token=posResponse.token;
    tokenstor.settoken(token);
    print(tokenstor.gettoken());

    //You can use your login model data as per your requirements.
  }
}
