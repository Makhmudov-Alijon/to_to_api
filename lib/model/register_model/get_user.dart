import 'package:json_annotation/json_annotation.dart';

part 'get_user.g.dart';

@JsonSerializable(explicitToJson: true)
class GetUser {
  /*
  "age": 20,
        "_id": "624c1f0473034c00175d16ce",
        "name": "Ali",
        "email": "bhcabhbsh123c@gmail.com",
        "createdAt": "2022-04-05T10:50:44.355Z",
        "updatedAt": "2022-04-05T10:50:44.636Z",
        "__v": 1
   */
final int age;
final String name;
final String email;
final String createdAt;
final String updatedAt;
  GetUser(this.age, this.name, this.email, this.createdAt, this.updatedAt);

  factory GetUser.fromJson(Map<String, dynamic> json) => _$GetUserFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserToJson(this);
}