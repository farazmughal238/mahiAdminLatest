import 'package:flutter/material.dart';

class UserModel {
  final String fullName;
  final String emailAddress;
  final String id;
  final String userType;
  late bool checkBoxValue;
  final Icon threeDots;

  UserModel({
    required this.fullName,
    required this.emailAddress,
    required this.id,
    required this.userType,
    required this.checkBoxValue,
    required this.threeDots
  });
}
