import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TaskModel {
  /*
  {
	"description": "asdasdads123123ad book"
}
   */
  final String description;

  TaskModel(this.description);

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
