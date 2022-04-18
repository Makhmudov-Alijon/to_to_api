import 'package:json_annotation/json_annotation.dart';
import 'package:to_do/model/task_model/task_model.dart';

part 'update_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateResponse {
  /*
  {
    "success": true,
    "data": {
        "completed": false,
        "_id": "624d7800be8f9f0017d34b9a",
        "description": "titel",
        "owner": "624d45b0be8f9f0017d34b27",
        "createdAt": "2022-04-06T11:22:40.789Z",
        "updatedAt": "2022-04-06T11:26:01.054Z",
        "__v": 0
    }
}
   */
final bool success;
final TaskModel data;
  UpdateResponse(this.success, this.data);

  factory UpdateResponse.fromJson(Map<String, dynamic> json) => _$UpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateResponseToJson(this);
}