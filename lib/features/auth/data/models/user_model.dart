import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(super.UserId, {required super.email, required super.name});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(user.uid, email: user.email!, name: user.displayName!);
  }

}