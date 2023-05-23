import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final isPasswordNotVisible = true.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  void changePasswordVisibility() {
    isPasswordNotVisible.value = !isPasswordNotVisible.value;
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
