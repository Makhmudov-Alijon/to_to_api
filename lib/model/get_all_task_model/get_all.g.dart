// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTaskAll _$GetTaskAllFromJson(Map<String, dynamic> json) => GetTaskAll(
      json['count'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => GetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetTaskAllToJson(GetTaskAll instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
