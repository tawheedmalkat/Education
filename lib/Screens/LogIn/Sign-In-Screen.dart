import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/Custome-Button.dart';
import '../../Widgets/background-Image.dart';
import 'Sign-In-Controller.dart';
import 'Widget-LogIn/Inputcontainer-Sign-In.dart';

class LogInScreen extends StatelessWidget {
  final SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(imagePath: "assets/Images/start.jpeg"),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeText(),
                SizedBox(height: screenHeight * 0.02),
                CenteredImage(imagePath: "assets/Images/img_2.png", widthFactor: 0.5),
                SizedBox(height: screenHeight * 0.15),
                InputContainer(screenWidth: screenWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 100),
      child: Text(
        "Welcome Back",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CenteredImage extends StatelessWidget {
  final String imagePath;
  final double widthFactor;

  const CenteredImage({required this.imagePath, required this.widthFactor});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Image.asset(
        imagePath,
        width: screenWidth * widthFactor,
      ),
    );
  }
}



