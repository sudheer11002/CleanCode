

import 'package:dartz/dartz.dart';

import '../user_entities/app_error.dart';

abstract class UseCase<Type, Params> {

  Future<Either<AppError, Type>> call(Params params);
}