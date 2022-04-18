// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repostry.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://api-nodejs-todolist.herokuapp.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserInfo> postUser(registerModel, contentType) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Content-Type': contentType};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(registerModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserInfo>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/user/register',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserInfo.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetTaskModel> postTask(taskModel, contentType, authorization) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': contentType,
      r'Authorization': authorization
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(taskModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetTaskModel>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/task',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetTaskModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetTaskAll> getAllTask(contentType, authorization) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': contentType,
      r'Authorization': authorization
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetTaskAll>(Options(
                method: 'GET',
                headers: _headers,
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/task',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetTaskAll.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UpdateResponse> putTask(
      contentType, authorization, id, taskUpdateModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': contentType,
      r'Authorization': authorization
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(taskUpdateModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UpdateResponse>(Options(
                method: 'PUT',
                headers: _headers,
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/task/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UpdateResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DeleteTaskModel> deleteTask(contentType, authorization, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': contentType,
      r'Authorization': authorization
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DeleteTaskModel>(Options(
                method: 'DELETE',
                headers: _headers,
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/task/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DeleteTaskModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProfilModel> user(contentType, authorization) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': contentType,
      r'Authorization': authorization
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProfilModel>(Options(
                method: 'GET',
                headers: _headers,
                extra: _extra,
                contentType: contentType)
            .compose(_dio.options, '/user/me',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProfilModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
