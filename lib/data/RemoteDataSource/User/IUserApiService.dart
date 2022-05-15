
import 'package:apisd/ManageDepartment/users_Model.dart';
import 'package:apisd/data/Model/userModel.dart';
import 'package:apisd/data/RemoteDataSource/User/UserApiService.dart';

abstract class IUserApiService{

  Future<UserModelResponse> createUser(Map<String, dynamic> map);

}