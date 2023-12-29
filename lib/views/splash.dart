import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/views/home_page_view.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulate loading time with Future.delayed
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(HomePageView()); // Navigate to HomePageView after 3 seconds
    });

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(
              "ShopMe",
              style: TextStyle(
                  fontFamily: "avenir",
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
