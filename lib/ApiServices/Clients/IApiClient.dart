import 'dart:io';
import 'package:apisd/ApiServices/ExternalValues/IExternalValues.dart';
import 'package:dio/dio.dart';

abstract class IApiClient{
Dio? get();
void ServiceGenerator(IExternalValues externalValues);
BaseOptions getBaseOptions(IExternalValues externalValues);
HttpClient httpClientCreate(HttpClient httpClient);
}