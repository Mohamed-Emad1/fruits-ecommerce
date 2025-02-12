import 'package:dartz/dartz.dart';
import 'package:fruitshup/core/errors/failure.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String fullName);
}
