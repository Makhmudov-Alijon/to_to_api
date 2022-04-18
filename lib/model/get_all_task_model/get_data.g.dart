// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetData _$GetDataFromJson(Map<String, dynamic> json) => GetData(
      json['completed'] as bool,
      json['_id'] as String,
      json['description'] as String,
      json['owner'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
    );

Map<String, dynamic> _$GetDataToJson(GetData instance) => <String, dynamic>{
      'completed': instance.completed,
      '_id': instance.id,
      'description': instance.description,
      'owner': instance.owner,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
