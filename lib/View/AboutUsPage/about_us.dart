import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  
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
          child: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: const Icon(
              Icons.menu,
              size: 24,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text("About Us Page"),
      ),
    );
  }

}
