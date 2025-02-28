import 'dart:convert';

import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/services/shared_prefrences_singletone.dart';
import 'package:fruitshup/features/auth/data/models/user_model.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var json = SharedPreferencesSingleton.getString(kUserData);
  var UserEntity = UserModel.fromJson(jsonDecode(json));
  return UserEntity;
}
