import 'package:furniture_donation/Router/binding_classes.dart';
import 'package:furniture_donation/View/AuthPages/main_auth_page.dart';
import 'package:furniture_donation/View/AuthPages/sign_in_page.dart';
import 'package:furniture_donation/View/AuthPages/sign_up_page.dart';
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
  )
];

class RouterApp {
  static const String mainAuthPage = '/AuthPages/main_auth_page.dart';
  static const String signInPage = '/AuthPages/sign_in_page';
  static const String signUpPage = '/AuthPages/sign_up_page';
}
