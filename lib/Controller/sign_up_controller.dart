import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final isPasswordNotVisible = true.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController nameController;
  late TextEditingController phoneNumberController;

  void changePasswordVisibility() {
    isPasswordNotVisible.value = !isPasswordNotVisible.value;
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
    super.onClose();
  }
}
