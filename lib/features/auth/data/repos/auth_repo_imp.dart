import 'package:dartz/dartz.dart';
import 'package:fruitshup/core/errors/failure.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo{
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}