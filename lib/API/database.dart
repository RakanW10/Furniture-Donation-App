import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';

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
    print(uid);
    try {
      final userData = await _firestore.collection('users').doc(uid).get();
      AppUser user = AppUser.fromJson(json: userData.data()!);

      return user;
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> addItem({required Item item}) async {
    try {
      await _firestore.collection('users').doc(item.ownerId).update({
        'myItems': FieldValue.arrayUnion([item.toJson()])
      });

      await _firestore.collection('items').doc(item.id).set(item.toJson());
      print("added");
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
