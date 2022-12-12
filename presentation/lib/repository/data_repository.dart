

import 'package:dartz/dartz.dart';
import 'package:presentation/user_entities/user_entity.dart';

import '../user_entities/app_error.dart';



abstract class DataRepository {
  Future<Either<AppError, UserEntity>> getUserDetails();
}