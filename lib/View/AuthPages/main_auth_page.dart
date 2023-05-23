import 'package:flutter/material.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/View/AuthPages/components/google_btn.dart';
import 'package:furniture_donation/View/Components/logo_big.dart';
import 'package:furniture_donation/View/Components/main_BTN.dart';
import 'package:get/get.dart';

class MainAuthPage extends StatelessWidget {
  const MainAuthPage({super.key});

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
          child: Column(
            children: [
              const LogoBig(),
              const Text(
                "Explore the app",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFAE9F8C),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Now your furniture donation in one place",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFAE9F8C),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MainBTN(
                title: "Sign in",
                onPressed: () {
                  Get.toNamed(RouterApp.signInPage);
                },
                isFilled: true,
              ),
              const SizedBox(height: 8),
              MainBTN(
                title: "Create an account",
                onPressed: () {
                  Get.toNamed(RouterApp.signUpPage);
                },
                isFilled: false,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: const Color(0xFFAE9F8C),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Or Sign in With",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFAE9F8C),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: const Color(0xFFAE9F8C),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Google Button
              const GoogleBTN(),
            ],
          ),
        ),
      ),
    );
  }
}
