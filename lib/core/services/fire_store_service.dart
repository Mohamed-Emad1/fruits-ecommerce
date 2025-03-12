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
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData(
      {required String path,
      String? documentId,
      Map<String, dynamic>? query}) async {
    if (documentId != null) {
      var data = await firestore.collection(path).doc(documentId).get();
      return data.data();
    } else {
      Query<Map<String, dynamic>> data = firestore.collection(path);
      if (query != null) {
        if (query["orderBy"] != null) {
          var orderBy = query["orderBy"];
          var descending = query["descending"];
          data = data.orderBy(orderBy, descending: descending);
        }

        if (query["limit"] != null) {
          var limit = query["limit"];
          data = data.limit(limit);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> isUserExist({required String path, required String documentId}) {
    var data = firestore.collection(path).doc(documentId).get();
    return data.then((value) => value.exists);
  }
}
