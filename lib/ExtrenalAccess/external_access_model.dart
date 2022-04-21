import 'package:flutter/material.dart';

class External {
  final String userName;
  final String type;
  final String sentfrom;
  final String org;
  final String id;
  final String status;
  late bool checkBoxValue;

  External({
    required this.userName,
    required this.type,
    required this.sentfrom,
    required this.org,
    required this.id,
    required this.status,
    required this.checkBoxValue
  });
}
