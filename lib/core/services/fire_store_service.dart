import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruitshup/core/services/database_service.dart';

class FireStoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      required String? documentId}) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    }
    await firestore.collection(path).add(data);
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();

    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> isUserExist({required String path, required String documentId}) {
    var data = firestore.collection(path).doc(documentId).get();
    return data.then((value) => value.exists);
  }
}
