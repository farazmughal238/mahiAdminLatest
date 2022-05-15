import 'package:apisd/Domain/repo/IRepo.dart';
import 'package:apisd/core/failure/failure.dart';
import 'package:apisd/core/user_case/user_case.dart';
import 'package:apisd/data/Model/userModel.dart';
import 'package:dartz/dartz.dart';

import '../../ManageDepartment/users_Model.dart';
import '../model/create_user_params.dart';

class CreateUser implements UseCase<UserModelResponse, CreateUserParams>{
  IRepo iUserRepo;
  CreateUser(this.iUserRepo);

  @override
  Future<Either<Failure, UserModelResponse>> call(CreateUserParams prams) {
    return iUserRepo.createUser(prams.toMap(), );
  }
}