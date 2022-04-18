import 'package:json_annotation/json_annotation.dart';

part 'get_data.g.dart';

@JsonSerializable(explicitToJson: true)
class GetData {
  /*
  "completed": false,
            "_id": "6223de5fcfbac800179e1c2c",
            "description": "reading book",
            "owner": "6223de4bcfbac800179e1c2a",
            "createdAt": "2022-03-05T22:04:15.494Z",
            "updatedAt": "2022-03-05T22:04:15.494Z",
            "__v": 0
   */
  final bool completed;
  @JsonKey(name: "_id")
  final String id;
  final String description;
  final String owner;
  final String createdAt;
  final String updatedAt;
  GetData(this.completed, this.id, this.description, this.owner, this.createdAt, this.updatedAt);

  factory GetData.fromJson(Map<String, dynamic> json) => _$GetDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetDataToJson(this);
}