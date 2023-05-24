import 'package:furniture_donation/Model/Item/item_model.dart';

class ItemManager {
  ItemManager._();

  static List<Item> _items = [];

  static List<Item> get items => _items;

  // static uploadOneItem({required Item item}) {
  //   _items.add(item);
  //   DatabaseService.addItem(item: item);
  // }
}
