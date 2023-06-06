import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:furniture_donation/Model/Order/order_model.dart';

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

  static Future<void> deleteItem({required Item item}) async {
    try {
      await _firestore.collection('users').doc(item.ownerId).update({
        'myItems': FieldValue.arrayRemove([item.toJson()])
      });
      await _firestore.collection('items').doc(item.id).delete();
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

  static Future<List<OrderModel>> getUserOrders({required String uid}) async {
    List<OrderModel> orders = [];
    try {
      var userData = await _firestore.collection('users').doc(uid).get();
      if (userData.data()!['myOrders'] == null) return Future.value(orders);
      for (String orderId in userData.data()!['myOrders']) {
        var orderData =
            await _firestore.collection('orders').doc(orderId).get();
        orders
            .add(OrderModel.fromJson(orderData.data() as Map<String, dynamic>));
      }
    } catch (e) {
      rethrow;
    }
    return Future.value(orders);
  }

  static Future<OrderModel> getOrderbyId({required String orderId}) async {
    try {
      var orderData = await _firestore.collection('orders').doc(orderId).get();
      OrderModel order =
          OrderModel.fromJson(orderData.data() as Map<String, dynamic>);
      return order;
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> putNewOrder({required OrderModel order}) async {
    try {
      // Order
      await _firestore.collection('orders').doc(order.id).set(order.toJson());
      // Owner
      await _firestore.collection('users').doc(order.ownerUid).update({
        'myOrders': FieldValue.arrayUnion([order.id])
      });
      // Buyer
      await _firestore.collection('users').doc(order.buyerId).update({
        'myOrders': FieldValue.arrayUnion([order.id])
      });
      // Item
      await _firestore.collection('items').doc(order.itemUid).update({
        "isAvailable": false,
      });
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool> isItemAvailable({required String itemId}) async {
    var isAvailable = false;
    try {
      await _firestore.collection('items').doc(itemId).get().then((itemData) {
        if (itemData.exists) {
          if (itemData.data()!['isAvailable'] == true) {
            isAvailable = true;
          } else {
            isAvailable = false;
          }
        } else {
          isAvailable = false;
        }
      });
    } catch (e) {
      rethrow;
    }
    return Future.value(isAvailable);
  }

  static Future<void> updateStatusWithAcceeptOwner(
      {required OrderModel order}) async {
    try {
      // Order
      await _firestore.collection('orders').doc(order.id).update({
        'status': OrderStatus.accepted.toString().split(".").last,
      });
    } catch (e) {
      rethrow;
    }
    return Future.value();
  }

  static Future<void> updateStatusWithRejectOwner(
      {required OrderModel order}) async {
    try {
      // Order
      await _firestore.collection('orders').doc(order.id).update({
        'status': OrderStatus.rejected.toString().split(".").last,
      });
      // Item
      await _firestore.collection('items').doc(order.itemUid).update({
        'isAvailable': true,
      });
    } catch (e) {
      rethrow;
    }
    return Future.value();
  }

  static Future<void> updateStatusWithRejectBuyer(
      {required OrderModel order}) async {
    try {
      // Order
      await _firestore.collection('orders').doc(order.id).delete();
      // Item
      await _firestore.collection('items').doc(order.itemUid).update({
        'isAvailable': true,
      });
      // Owner
      await _firestore.collection('users').doc(order.ownerUid).update({
        'myOrders': FieldValue.arrayRemove([order.id])
      });
      // Buyer
      await _firestore.collection('users').doc(order.buyerId).update({
        'myOrders': FieldValue.arrayRemove([order.id])
      });
    } catch (e) {
      rethrow;
    }
  }
}
