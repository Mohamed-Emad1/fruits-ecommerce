import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.userId,required super.email, required super.name});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(userId: user.uid, email: user.email ?? '', name: user.displayName ?? '');
  }

}