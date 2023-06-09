import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Router/binding_classes.dart';
import 'package:furniture_donation/View/AboutUsPage/about_us.dart';
import 'package:furniture_donation/View/AddItemPage/add_item_page.dart';
import 'package:furniture_donation/View/AuthPages/main_auth_page.dart';
import 'package:furniture_donation/View/AuthPages/sign_in_page.dart';
import 'package:furniture_donation/View/AuthPages/sign_up_page.dart';
import 'package:furniture_donation/View/HomePage/home_page.dart';
import 'package:furniture_donation/View/ItemPage/item_page.dart';
import 'package:furniture_donation/View/MainDrawer/main_drawer.dart';
import 'package:furniture_donation/View/MyItemsPage/my_items_page.dart';
import 'package:furniture_donation/View/OrdersPage/orders_page.dart';
import 'package:furniture_donation/View/SearchPage/search_page.dart';
import 'package:get/get.dart';

final List<GetPage> routerApp = [
  GetPage(
    name: RouterApp.mainAuthPage,
    page: () => const MainAuthPage(),
  ),
  GetPage(
    name: RouterApp.signInPage,
    page: () => const SignInPage(),
    binding: SignInBindings(),
  ),
  GetPage(
    name: RouterApp.signUpPage,
    page: () => const SignUpPage(),
    binding: SignUpBindings(),
  ),
  GetPage(
    name: RouterApp.mainDrawer,
    page: () => const MainDrawer(),
    binding: MainBindings(),
  ),
  GetPage(
    name: RouterApp.homePage,
    page: () => const HomePage(),
    binding: MainBindings(),
  ),
  GetPage(
    name: RouterApp.aboutUsPage,
    page: () => const AboutUsPage(),
  ),
  GetPage(
    name: RouterApp.ordersPage,
    page: () => const OrdersPage(),
    binding: OrdersBindings(),
  ),
  GetPage(
    name: RouterApp.myItemsPage,
    page: () => const MyItemsPage(),
    binding: MyItemsBindings(),
  ),
  GetPage(
    name: RouterApp.addItemPage,
    page: () => const AddItemPage(),
    binding: AddItemBindings(),
  ),
  GetPage(
    name: RouterApp.searchPage,
    page: () => const SearchPage(),
    binding: SearchBindings(),
  ),
  GetPage(
    name: RouterApp.itemPage,
    page: () {
      var _args = Get.arguments;
      return ItemPage(
        item: _args["item"],
        isMyItem: _args["isMyItem"],
      );
    },
    arguments: const {"item": Item, "Index": String},
    binding: ItemPageBindings(),
  )
];

class RouterApp {
  static const String mainAuthPage = '/AuthPages/main_auth_page.dart';
  static const String signInPage = '/AuthPages/sign_in_page';
  static const String signUpPage = '/AuthPages/sign_up_page';
  static const String homePage = '/homePage';
  static const String mainDrawer = '/mainDrawer';
  static const String aboutUsPage = '/aboutUsPage';
  static const String myItemsPage = '/myItemsPage';
  static const String ordersPage = '/ordersPage';
  static const String addItemPage = '/homePage/addItemPage';
  static const String searchPage = '/homePage/searchPage';
  static const String itemPage = '/itemPage';
}
