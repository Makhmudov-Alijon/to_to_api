// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTaskModel _$GetTaskModelFromJson(Map<String, dynamic> json) => GetTaskModel(
      json['success'] as bool,
      Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetTaskModelToJson(GetTaskModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };
