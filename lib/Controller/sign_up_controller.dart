import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_donation/API/auth.dart';
import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final isPasswordNotVisible = true.obs;
  final isConfirmPasswordNotVisible = true.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController nameController;
  late TextEditingController phoneNumberController;
  late AppUser user;

  void changePasswordVisibility() {
    isPasswordNotVisible.value = !isPasswordNotVisible.value;
  }

  void changeConfirmPasswordVisibility() {
    isConfirmPasswordNotVisible.value = !isConfirmPasswordNotVisible.value;
  }

  void signUp() async {
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
    } else if (confirmPasswordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your confirm password",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else if (nameController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your name",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else if (phoneNumberController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your phone number",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar(
        "Error",
        "Password and confirm password does not match",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else {
      try {
        UserCredential userCredential = await Auth.signUp(
          emailAddress: emailController.text,
          password: passwordController.text,
        );
        user = AppUser(
          uid: userCredential.user!.uid,
          name: nameController.text,
          emailAddress: emailController.text,
          phoneNumber: phoneNumberController.text,
        );
        // Save user to local storage
        appStorage.write("user", user.toJson());
        // Save user to firestore
        DatabaseService.addUser(user: user);
        // Set current user

        Get.snackbar("Success", "Sign up successfully");
      } on FirebaseAuthException catch (e) {
        Get.snackbar("Error", e.message!);
      }
    }
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
