abstract class DatabaseService {
  Future<void> addUserData(
      {required String path, required Map<String, dynamic> data});
}
