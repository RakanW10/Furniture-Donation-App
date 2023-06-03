import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
    try {
      final userData = await _firestore.collection('users').doc(uid).get();
      AppUser user = AppUser.fromJson(json: userData.data()!);

      return user;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<Item>> getAllItems() async {
    try {
      final itemsData = await _firestore.collection('items').get();
      List<Item> items = [];
      for (QueryDocumentSnapshot itemData in itemsData.docs) {
        items.add(Item.fromJson(itemData.data() as Map<String, dynamic>));
      }
      return items;
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

  static Future<List<Item>> getUserItems({required String uid}) async {
    List<Item> items = [];
    try {
      await _firestore.collection('users').doc(uid).get().then(
        (userData) {
          if (userData.exists) {
            for (Map<String, dynamic> itemData in userData.data()!['myItems']) {
              items.add(Item.fromJson(itemData));
            }
          } else {
            throw FirebaseException(
              plugin: 'Firestore',
              message: 'User with this id does not exist',
            );
          }
        },
      );
    } catch (e) {
      rethrow;
    }
    return Future.value(items);
  }

  static Future<List<Item>> searchItems({required String query}) async {
    List<Item> items = [];
    try {
      await _firestore
          .collection('items') //!Double check the search technique
          .where('name', isGreaterThanOrEqualTo: query)
          .get()
          .then(
        (itemsData) {
          for (QueryDocumentSnapshot itemData in itemsData.docs) {
            items.add(Item.fromJson(itemData.data() as Map<String, dynamic>));
          }
        },
      );
    } catch (e) {
      rethrow;
    }
    return Future.value(items);
  }
}
