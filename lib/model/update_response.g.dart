// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateResponse _$UpdateResponseFromJson(Map<String, dynamic> json) =>
    UpdateResponse(
      json['success'] as bool,
      TaskModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateResponseToJson(UpdateResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };
