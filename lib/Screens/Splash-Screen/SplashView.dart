import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/Custome-Button.dart';
import '../Choosing/Button-Custom.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double image1Width = screenWidth * 0.5;
    final double image2Width = screenWidth * 0.8;
    final double buttonWidth = screenWidth * 0.7;
    final double buttonHeight = 60;
    final double paddingValue = screenWidth * 0.08;
    final double textFontSize = screenWidth * 0.04;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.05),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.2),
            child: Image.asset(
              "assets/Images/img_1.png",
              width: image1Width,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(paddingValue),
            child: Text(
              "Welcome to our educational app! "
                  "Start your journey with us today and explore "
                  "a world of knowledge in innovative and easy ways.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: textFontSize,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.02),
            child: Image.asset(
              "assets/Images/img.png",
              width: image2Width,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              left: screenWidth * 0.02,
            ),
            child: CustomButton(
              height: buttonHeight,
              width: buttonWidth,
              text: "Get Started",
              onTap: () {
                Get.toNamed('/Log');
              },
              buttonColor: const Color(0xff2EA42B),
            ),
          ),
        ],
      ),
    );
  }
}
