import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleBTN extends StatelessWidget {
  const GoogleBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        fixedSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 16,
        ),
      ),
      onPressed: () {
        // Goole Sign In
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/GoogleLogo.svg"),
          const SizedBox(width: 8),
          const Text(
            "Sign in with Google",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFFAE9F8C),
            ),
          ),
        ],
      ),
    );
  }
}
