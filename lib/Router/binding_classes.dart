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
