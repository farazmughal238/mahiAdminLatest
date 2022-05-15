
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import '../failure/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params prams);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class IdParams extends NoParams {
  IdParams({required this.id});

  final String id;

  Map<String, dynamic> toMap() {
    return {'refreshToken': id};
  }

  @override
  List<Object> get props => [id];

}






