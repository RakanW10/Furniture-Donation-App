import 'package:flutter/material.dart';
import 'package:furniture_donation/Controller/sign_in_controller.dart';
import 'package:furniture_donation/View/Components/logo_big.dart';
import 'package:furniture_donation/View/Components/main_BTN.dart';
import 'package:furniture_donation/View/Components/main_text_field.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 80,
        leading: Container(
          margin: const EdgeInsets.only(top: 20, left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const LogoBig(),
                const Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFAE9F8C),
                  ),
                ),
                const SizedBox(height: 16),
                MainTextField(
                  controller: TextEditingController(),
                  hintText: "Email address",
                ),
                const SizedBox(height: 8),
                Obx(
                  () => MainTextField(
                    controller: TextEditingController(),
                    hintText: "Password",
                    isPassword: true,
                    isPasswordNotVisible: controller.isPasswordNotVisible.value,
                    onIconPressed: controller.changePasswordVisibility,
                  ),
                ),
                const SizedBox(height: 16),
                MainBTN(
                  title: "Sign in",
                  onPressed: () {
                    //TODO: Sign in
                  },
                  isFilled: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
