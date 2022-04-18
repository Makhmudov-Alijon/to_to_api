import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:to_do/model/get_all_task_model/get_all.dart';
import 'package:to_do/model/task_model/get_task_model.dart';
import 'package:to_do/model/task_model/task_model.dart';
import 'package:to_do/model/task_update_model.dart';
import 'package:to_do/model/update_response.dart';

import '../model/delete_task_model.dart';
import '../model/register_model/register_model.dart';
import '../model/register_model/user_info.dart';

part 'api_repostry.g.dart';

@RestApi(baseUrl: "http://api-nodejs-todolist.herokuapp.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/user/register')
  Future<UserInfo> postUser(
    @Body() RegisterModel registerModel,
    @Header("Content-Type") String contentType,
  );

  @POST('/task')
  Future<GetTaskModel> postTask(
    @Body() TaskModel taskModel,
    @Header('Content-Type') String contentType,
    @Header('Authorization') String authorization,
  );

  @GET('/task')
  Future<GetTaskAll> getAllTask(
    @Header('Content-Type') String contentType,
    @Header('Authorization') String authorization,
  );

  @PUT('/task/{id}')
  Future<UpdateResponse> putTask(
      @Header('Content-Type') String contentType,
      @Header('Authorization') String authorization,
      @Path("id") String id,
      @Body() TaskUpdateModel taskUpdateModel);
  @DELETE('/task/{id}')
  Future<DeleteTaskModel> deleteTask(
      @Header('Content-Type') String contentType,
      @Header('Authorization') String authorization,
      @Path("id") String id,
     );
}
