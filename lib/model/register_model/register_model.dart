import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterModel {
/*
{
	"name": " Ali",
	"email": "hb123abhbsh123c@gmail.com",
	"password": "1234567asdasda",
	"age": 20
}
 */
  final String name;
  final String email;
  final String password;
  final int age;

  RegisterModel(this.name, this.email, this.password, this.age);

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
