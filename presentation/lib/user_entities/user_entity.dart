

import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {

  UserEntity({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  String fullName() => name;

  @override
  List<Object?> get props => [
    id,
    name,
  ];
}