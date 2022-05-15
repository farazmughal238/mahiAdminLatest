import 'package:apisd/ApiServices/error_handler.dart';
import 'package:apisd/Domain/repo/IRepo.dart';
import 'package:apisd/ManageDepartment/users_Model.dart';
import 'package:apisd/core/failure/failure.dart';
import 'package:apisd/data/Model/userModel.dart';
import 'package:apisd/data/RemoteDataSource/User/IUserApiService.dart';
import 'package:dartz/dartz.dart';

class Repo extends IRepo {
  IUserApiService iUserApiService;
  Repo({required this.iUserApiService});
  @override
  Future<Either<Failure, UserModelResponse>> createUser(Map<String, dynamic> map) async {
    try{
      final result = await iUserApiService.createUser(map);
      return Right(result);
    }catch(e){
      print(e.toString());
      return Left(getFailure(e as Exception));
    }
  }
}