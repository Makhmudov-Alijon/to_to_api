// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profil_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfilModel _$ProfilModelFromJson(Map<String, dynamic> json) => ProfilModel(
      json['age'] as int,
      json['name'] as String,
      json['email'] as String,
      json['createdAt'] as String,
    );

Map<String, dynamic> _$ProfilModelToJson(ProfilModel instance) =>
    <String, dynamic>{
      'age': instance.age,
      'name': instance.name,
      'email': instance.email,
      'createdAt': instance.createdAt,
    };
