import 'package:json_annotation/json_annotation.dart';
import 'package:to_do/model/get_all_task_model/get_data.dart';

part 'get_all.g.dart';

@JsonSerializable(explicitToJson: true)
class GetTaskAll {
  /*
  {
    "count": 6,
    "data": [
        {
            "completed": false,
            "_id": "6223de5fcfbac800179e1c2c",
            "description": "reading book",
            "owner": "6223de4bcfbac800179e1c2a",
            "createdAt": "2022-03-05T22:04:15.494Z",
            "updatedAt": "2022-03-05T22:04:15.494Z",
            "__v": 0
        }
    ]
}
   */
final int count;
final List<GetData> data;
  GetTaskAll(this.count, this.data);

  factory GetTaskAll.fromJson(Map<String, dynamic> json) =>
      _$GetTaskAllFromJson(json);

  Map<String, dynamic> toJson() => _$GetTaskAllToJson(this);
}
