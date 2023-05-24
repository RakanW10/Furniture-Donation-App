import 'package:furniture_donation/Model/Item/item_model.dart';

class AppUser {
  final String uid;
  final String emailAddress;
  final String name;
  final String phoneNumber;
  final List<Item> myItems = [];

  AppUser({
    required this.uid,
    required this.emailAddress,
    required this.name,
    required this.phoneNumber,
  });

  factory AppUser.fromJson({required Map<String, dynamic> json}) {
    AppUser tempUser = AppUser(
      uid: json['uid'],
      emailAddress: json['emailAddress'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
    );
    for (Map<String, dynamic> itemData in json['myItems']) {
      tempUser.myItems.add(Item.fromJson(itemData));
    }
    return tempUser;
  }

  toJson() {
    return {
      'uid': uid,
      'emailAddress': emailAddress,
      'name': name,
      'phoneNumber': phoneNumber,
      'myItems': myItems.map((e) => e.toJson()).toList(),
    };
  }
}
