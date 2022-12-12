

import 'package:dartz/dartz.dart';
import 'package:presentation/repository/data_repository.dart';
import 'package:presentation/user_entities/app_error.dart';

import '../app_use_cases/data_use_case.dart';
import '../user_entities/user_entity.dart';

class DataListUseCase extends UseCase<UserEntity, UserDetailParams> {
  final DataRepository repository;

   DataListUseCase({required this.repository});


  @override
  Future<Either<AppError, UserEntity>> call(UserDetailParams params) {
    return repository.getUserDetails();
  }
}

class UserDetailParams {
}












