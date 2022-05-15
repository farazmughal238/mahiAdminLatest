import 'package:apisd/ManageDepartment/users_Model.dart';
import 'package:apisd/core/failure/failure.dart';
import 'package:apisd/data/Model/userModel.dart';
import 'package:dartz/dartz.dart';

abstract class IRepo{
Future<Either<Failure, UserModelResponse>> createUser(Map<String, dynamic> map);
}