import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/const.dart';
import 'package:get/get.dart';

class MyItemsController extends GetxController {
  List<Item> myItems = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() async {
    final userData = appStorage.read('user');
    if (userData != null) {
      myItems = await DatabaseService.getUserItems(uid: userData['uid']);
    }
    isLoading.value = false;
    super.onInit();
  }
}
