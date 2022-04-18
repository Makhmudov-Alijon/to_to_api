// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      json['completed'] as bool,
      json['_id'] as String,
      json['description'] as String,
      json['owner'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'completed': instance.completed,
      '_id': instance.id,
      'description': instance.description,
      'owner': instance.owner,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
