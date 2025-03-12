import 'package:fruitshup/core/repos/product_repo.dart';
import 'package:fruitshup/core/repos/product_repo_impl.dart';
import 'package:fruitshup/core/services/database_service.dart';
import 'package:fruitshup/core/services/fire_store_service.dart';
import 'package:fruitshup/core/services/firebase_auth_service.dart';
import 'package:fruitshup/features/auth/data/repos/auth_repo_imp.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImp(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    databaseService: getIt<DatabaseService>(),
  ));

   getIt.registerSingleton<ProductRepo>(ProductRepoImpl(
    databaseService: getIt<DatabaseService>(),
  ));
}
