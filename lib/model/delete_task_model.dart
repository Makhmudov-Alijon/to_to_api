import 'package:json_annotation/json_annotation.dart';

part 'delete_task_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DeleteTaskModel {
  /*
  {
    "success": true,
    "data": {}
}
   */
final bool success;
final Map data;
  DeleteTaskModel(this.success, this.data);

  factory DeleteTaskModel.fromJson(Map<String, dynamic> json) => _$DeleteTaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteTaskModelToJson(this);
}