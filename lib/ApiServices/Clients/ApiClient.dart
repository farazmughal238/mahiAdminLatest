
import 'dart:io';

import 'package:apisd/ApiServices/Clients/IApiClient.dart';
import 'package:apisd/ApiServices/ExternalValues/IExternalValues.dart';
import 'package:apisd/data/LocalDataSource/Storage/IPrefHelper.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:dio/src/options.dart';

class ApiClient extends Interceptor implements IApiClient{

  ApiClient.create({required IExternalValues externalValues, required this.iPrefHelper}){
    ServiceGenerator(externalValues);
  }

  @override
  void ServiceGenerator(IExternalValues externalValues) {
    dio = Dio(getBaseOptions(externalValues));
    dio?.interceptors.add(this);
  }


  @override
  Dio? get() => dio;

  @override
  BaseOptions getBaseOptions(IExternalValues externalValues) {
    return BaseOptions(
      baseUrl: externalValues.getBaseUrl(),
      connectTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      receiveDataWhenStatusError: true
    );
  }

  @override
  HttpClient httpClientCreate(HttpClient httpClient) {
    // TODO: implement httpClientCreate
    throw UnimplementedError();
  }

  Dio? dio;
  IPrefHelper iPrefHelper;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path != 'api/auth/user' && options.path != 'api/auth/login') {
      final token = iPrefHelper.retrieveToken();
      options.headers = {HttpHeaders.authorizationHeader: "Bearer $token"};
    }
    print('path ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("onResponse");
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}