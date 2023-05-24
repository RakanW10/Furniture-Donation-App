import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class DatabaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseStorage _storage = FirebaseStorage.instance;
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
      // Upload images
      for (int i = 0; i < item.imagesUrls.length; i++)
        item.imagesUrls[i] = await uploadImage(File(item.imagesUrls[i]));

      await _firestore.collection('users').doc(item.ownerId).update({
        'myItems': FieldValue.arrayUnion([item.toJson()])
      });

      await _firestore.collection('items').doc(item.id).set(item.toJson());
    } catch (e) {
      rethrow;
    }
  }

  static Future<String> uploadImage(File image) async {
    try {
      String fileName = image.path.split('/').last;
      Reference ref = _storage.ref().child('images/$fileName');
      await ref.putFile(image);
      String imageUrl = await ref.getDownloadURL();
      return imageUrl;
    } catch (e) {
      rethrow;
    }
  }
}
