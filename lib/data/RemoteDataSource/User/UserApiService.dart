
import 'dart:convert';
import 'dart:js';
import 'dart:typed_data';
import 'dart:html';

import 'package:apisd/ApiServices/Clients/ApiClient.dart';
import 'package:apisd/ApiServices/Clients/IApiClient.dart';
import 'package:apisd/ApiServices/error_handler.dart';
import 'package:apisd/Domain/model/login_user_mode.dart';
import 'package:apisd/ManageDepartment/users_Model.dart';
import 'package:apisd/Mixin/stateBaseMixin.dart';
import 'package:apisd/core/failure/exceptions.dart';
import 'package:apisd/data/Model/checking_email_model.dart';
import 'package:apisd/data/Model/userModel.dart';
import 'package:apisd/data/RemoteDataSource/User/IUserApiService.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'dart:html' as html;

import '../../../HomeScreens/homescreen.dart';

class UserApiService implements IUserApiService{
IApiClient iApiClient;
UserApiService({required this.iApiClient}) : _dio = iApiClient.get()!;

Future<UserModelResponse> registerUser({
  Uint8List? data,
  html.File? file,
  String? firstName,
  String? lastName,
  String? jobTitle,
  String? mainContact,
  String? secondaryContact,
  String? userType,
  String? email,
  String? password,
}) async {

  UserModelResponse userModelResponse  = UserModelResponse.fromJson({});
  String? url = "https://mahi009.herokuapp.com/api/user/signup";
  var type = file!.type.split("/");

  try {
    final response = http.MultipartRequest("POST", Uri.parse(url));
    //response.headers[HttpHeaders.authorizationHeader] = "Bearer $token";
    response.fields['firstName'] = firstName!;
    response.fields["lastName"] = lastName.toString();
    response.fields["jobTitle"] = jobTitle.toString();
    response.fields["mainContact"] = mainContact.toString();
    response.fields["secondaryContact"] = secondaryContact.toString();
    response.fields["email"] = email.toString();
    response.fields["password"] = password.toString();
    response.fields["userType"] = userType.toString();
    response.files.add(http.MultipartFile.fromBytes("profile", data!, filename: file.name, contentType: MediaType(type.first, type.last)));

    await response.send().then((value) {
      value.stream.transform(utf8.decoder).listen((event) {

        userModelResponse =  UserModelResponse.fromJson(json.decode(event));
        print(userModelResponse);
      });
    });

    return userModelResponse;
  } catch (e) {
    print(e.toString());
    throw DefaultException();
  }
}


Future<LoginUserModel> login({required BuildContext context,
  String? email,
  String? password,

}) async {
  String? url = "https://mahi009.herokuapp.com/api/user/login";
  dynamic body = {
    "email": email,
    "password": password,
  };

  try {
    var dio = Dio();
    final response = await dio.post(url,  data: body,
    );
    if (response.statusCode == HttpStatus.ok) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
      return LoginUserModel.fromJson(response.data);
    } else {
      return LoginUserModel.fromJson({'status': false});
    }
  } on DioError catch (e) {
    final exception = getException(e);
    throw exception;
  } catch (e) {
    throw DefaultException();
  }
}


@override
Future<UserModelResponse> createUser(Map<String, dynamic> map) async {
  try {
    var media = await MultipartFile.fromFile(map['filePath'], filename: map['fileName'], contentType: MediaType('image', '*/*'));
    map['profile']  = media;
    FormData formData = FormData.fromMap(map);
    Response res = await _dio.post('user/signup', data: formData);
    return UserModelResponse.fromJson(res.data);
  } on DioError catch (e) {
    final exception = getException(e);
    throw exception;
  } catch (e) {
    print(e.toString());
    throw DefaultException();
  }
}

Future<checkEmailExisting> checkingEmail({
  String? email,

}) async {
  String? url = "https://mahi009.herokuapp.com/api/user/check-email";
  //String? url = "http//:192.168.100.4:3000/api/user/check-email";

  dynamic body = {
    "email": email,
  };

  try {
    var dio = Dio();
    final response = await dio.post(url,  data: body,
    );
    if (response.statusCode == HttpStatus.ok) {
      return checkEmailExisting.fromJson(response.data);
    } else {
      return checkEmailExisting.fromJson({'status': false});
    }
  } on DioError catch (e) {
    final exception = getException(e);
    throw exception;
  } catch (e) {
    throw DefaultException();
  }
}
  Dio _dio;
}