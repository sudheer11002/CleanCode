

import 'package:domain/user_model/data_list.dart';
import 'package:dartz/dartz.dart';

import 'package:presentation/repository/data_repository.dart';
import 'package:presentation/user_entities/app_error.dart';
import 'package:presentation/user_entities/user_entity.dart';
import '../remote_data_source/user_list_type_data.dart';

class UserRepositoryImpl extends DataRepository {
  late UserListTypeData _remoteDataSource;

  UserRepositoryImpl({
    required UserListTypeData userRemoteDataSource,
  }) {
    _remoteDataSource = userRemoteDataSource;
  }

  get mapper => null;


  @override
  Future<Either<AppError, UserEntity>> getUserDetails() async {
    try {
      DataList userDto =
          await _remoteDataSource.getDataDetails();

      UserEntity result =
      mapper.mapDTOtoEntity(userDto);

      return Right(result);
    } on Exception catch (e) {

      return Left(AppError(e.toString()));
    }
  }
}