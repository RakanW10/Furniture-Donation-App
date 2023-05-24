import 'package:furniture_donation/Controller/main_ontroller.dart';
import 'package:furniture_donation/Controller/orders_controller.dart';
import 'package:furniture_donation/Controller/sign_in_controller.dart';
import 'package:furniture_donation/Controller/sign_up_controller.dart';
import 'package:get/get.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}

class MyItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MyItemsBindings());
  }
}

class OrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(OrdersController());
  }
}
