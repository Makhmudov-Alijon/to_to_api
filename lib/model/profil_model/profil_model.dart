import 'package:json_annotation/json_annotation.dart';

part 'profil_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfilModel {
  /*
  {
    "age": 20,
    "_id": "6223c3892a4ae90017a8260c",
    "name": "al1231231231",
    "email": "shahzodbek12345@gmail.com",
    "createdAt": "2022-03-05T20:09:45.031Z",
    "updatedAt": "2022-03-05T20:09:45.283Z",
    "__v": 1
}
   */
final int age;
final String name;
final String email;
final String createdAt;
  ProfilModel(this.age, this.name, this.email, this.createdAt);

  factory ProfilModel.fromJson(Map<String, dynamic> json) => _$ProfilModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfilModelToJson(this);
}