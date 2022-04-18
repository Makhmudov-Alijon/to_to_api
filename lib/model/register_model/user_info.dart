import 'package:json_annotation/json_annotation.dart';


part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  /*
  {
    "user": {
        "age": 20,
        "_id": "624c1f0473034c00175d16ce",
        "name": "Ali",
        "email": "bhcabhbsh123c@gmail.com",
        "createdAt": "2022-04-05T10:50:44.355Z",
        "updatedAt": "2022-04-05T10:50:44.636Z",
        "__v": 1
    },
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjRjMWYwNDczMDM0YzAwMTc1ZDE2Y2UiLCJpYXQiOjE2NDkxNTU4NDR9.XrYg4RIDGTrdePVdtsoWcQ02VYLodWENHRFRs3aczpw"
}
   */
  final Map user;
  final String token;
  UserInfo(this.user, this.token, );

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}