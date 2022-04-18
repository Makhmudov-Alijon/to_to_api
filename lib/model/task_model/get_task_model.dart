import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_task_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GetTaskModel {
  /*
  {
    "success": true,
    "data": {
        "completed": false,
        "_id": "624d3376be8f9f0017d34ad5",
        "description": "asdasdads123123ad book",
        "owner": "62289fc231ec880017e05a61",
        "createdAt": "2022-04-06T06:30:14.835Z",
        "updatedAt": "2022-04-06T06:30:14.835Z",
        "__v": 0
    }
}
   */
final bool success;
final Data data;
  GetTaskModel(this.success, this.data);

  factory GetTaskModel.fromJson(Map<String, dynamic> json) => _$GetTaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetTaskModelToJson(this);
}