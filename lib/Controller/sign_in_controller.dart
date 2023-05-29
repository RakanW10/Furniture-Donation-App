import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_donation/API/Auth.dart';
import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final isPasswordNotVisible = true.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late AppUser user;
  void changePasswordVisibility() {
    isPasswordNotVisible.value = !isPasswordNotVisible.value;
  }

  Future<bool> sginIn() async {
    if (emailController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your email",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else if (passwordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your password",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else {
      try {
        UserCredential userCredential = await Auth.signIn(
          emailAddress: emailController.text,
          password: passwordController.text,
        );
        // save user data in local storage
        user = await DatabaseService.getUser(uid: userCredential.user!.uid);
        appStorage.write('user', user.toJson());
        return true;
      } catch (e) {
        Get.snackbar(
          "Error",
          e.toString(),
          colorText: Colors.white,
          backgroundColor: AppColors.primary,
        );
      }
    }
    return false;
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
