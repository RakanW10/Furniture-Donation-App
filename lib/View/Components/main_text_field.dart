import 'package:flutter/material.dart';
import 'package:furniture_donation/style.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.isPasswordNotVisible = true,
    this.onIconPressed,
    this.maxLines = 1,
    this.maxLength,
    this.onEditingComplete,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final bool isPasswordNotVisible;
  final Function()? onIconPressed;
  final int maxLines;
  final int? maxLength;
  final Function()? onEditingComplete;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onEditingComplete: onEditingComplete,
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFFAE9F8C),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFAE9F8C),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFAE9F8C),
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: isPassword
            ? IconButton(
                onPressed: onIconPressed,
                icon: isPasswordNotVisible
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              )
            : const SizedBox(),
        suffixIconColor: AppColors.primary,
      ),
      obscureText: isPasswordNotVisible && isPassword,
      maxLines: maxLines,
      maxLength: maxLength,
    );
  }
}
