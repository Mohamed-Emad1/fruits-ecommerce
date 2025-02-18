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
      return left(ServerFailure(e.toString()));
    }
  }
}
