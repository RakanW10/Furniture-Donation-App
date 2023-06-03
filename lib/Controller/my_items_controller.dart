import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/const.dart';
import 'package:get/get.dart';

class MyItemsController extends GetxController with StateMixin {
  RxList<Item> myItems = RxList<Item>.empty(growable: true);
  AppUser? user;

  Future<void> loadData() async {
    change(myItems, status: RxStatus.loading());

    final userData = await appStorage.read('user');
    if (userData == null) {
      change(myItems, status: RxStatus.empty());
      return;
    }
    user = AppUser.fromJson(json: userData);
    try {
      List<Item> data =
          await DatabaseService.getUserItems(uid: userData['uid']);
      myItems.addAll(data);
    } catch (e) {
      change(myItems, status: RxStatus.error(e.toString()));
    }

    if (myItems.isEmpty) {
      change(myItems, status: RxStatus.empty());
    } else {
      change(myItems, status: RxStatus.success());
    }
  }

  Future onRefresh() async {
    myItems.clear();
    await loadData();
  }

  @override
  void refresh() {
    // TODO: implement refresh
    super.refresh();
  }

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
