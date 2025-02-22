import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitshup/core/errors/custom_exceptions.dart';
import 'package:fruitshup/core/errors/failure.dart';
import 'package:fruitshup/core/services/database_service.dart';
import 'package:fruitshup/core/services/firebase_auth_service.dart';
import 'package:fruitshup/core/utils/backend_endpoints.dart';
import 'package:fruitshup/features/auth/data/models/user_model.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImp(
      {required this.databaseService, required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String fullName) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity =
          UserEntity(userId: user.uid, email: email, name: fullName);
      await addUserData(user: userEntity);

      return right(userEntity);
    } on CustomExceptions catch (e) {
      deleteUser(user);
      log("Exception is created in AuthRepoImp in create user with email and password : ${e.toString()}");
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);
      log("Exception is created in AuthRepoImp in create user with email and password : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  void deleteUser(User? user) {
    if (user != null) {
      firebaseAuthService.deleteUser();
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
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomExceptions catch (e) {
      deleteUser(user);
      log("Exception is created in AuthRepoImp sign in with google : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
       user = await firebaseAuthService.signInWithFacebook();
       var userEntity = UserModel.fromFirebaseUser(user);
       await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomExceptions catch (e) {
      deleteUser(user);
      log("Exception is created in AuthRepoImp sign in with facebook : ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<void> addUserData({required UserEntity user}) async {
    await databaseService.addUserData(
        path: BackendEndpoints.addUserData, data: user.toMap());
  }
}
