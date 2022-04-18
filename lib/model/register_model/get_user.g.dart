// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUser _$GetUserFromJson(Map<String, dynamic> json) => GetUser(
      json['age'] as int,
      json['name'] as String,
      json['email'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
    );

Map<String, dynamic> _$GetUserToJson(GetUser instance) => <String, dynamic>{
      'age': instance.age,
      'name': instance.name,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
