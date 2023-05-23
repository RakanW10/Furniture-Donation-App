import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_donation/Model/app_user.dart';

class DatabaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<void> addUser({required AppUser user}) async {
    try {
      await _firestore.collection('users').doc(user.uid).set(user.toJson());
    } catch (e) {
      rethrow;
    }
  }

  static Future<AppUser> getUser({required String uid}) async {
    try {
      final userData = await _firestore.collection('users').doc(uid).get();
      return AppUser.fromJson(userData.data()!);
    } catch (e) {
      rethrow;
    }
  }
}
