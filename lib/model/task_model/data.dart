import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(explicitToJson: true)
class Data {
  /*
   "completed": false,
        "_id": "624d3376be8f9f0017d34ad5",
        "description": "asdasdads123123ad book",
        "owner": "62289fc231ec880017e05a61",
        "createdAt": "2022-04-06T06:30:14.835Z",
        "updatedAt": "2022-04-06T06:30:14.835Z",
        "__v": 0
   */
  final bool completed;
  @JsonKey(name: "_id")
  final String id;
  final String description;
  final String owner;
  final String createdAt;
  final String updatedAt;
  Data(this.completed, this.id, this.description, this.owner, this.createdAt, this.updatedAt);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}