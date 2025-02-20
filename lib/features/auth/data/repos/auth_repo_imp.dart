import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruitshup/core/errors/custom_exceptions.dart';
import 'package:fruitshup/core/errors/failure.dart';
import 'package:fruitshup/core/services/firebase_auth_service.dart';
import 'package:fruitshup/features/auth/data/models/user_model.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImp({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String fullName) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);

      return right(UserModel.fromFirebaseUser(user));
    } on CustomExceptions catch (e) {
      log("Exception is created in AuthRepoImp in create user with email and password : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassord(
          email: email, password: password);

      return right(UserModel.fromFirebaseUser(user));
    } on CustomExceptions catch (e) {
      log("Exception is created in AuthRepoImp sign in with email and password : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomExceptions catch (e) {
      log("Exception is created in AuthRepoImp sign in with google : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();

      return Right(UserModel.fromFirebaseUser(user));
    } on CustomExceptions catch (e) {
      
      log("Exception is created in AuthRepoImp sign in with facebook : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    } 
  }
}
