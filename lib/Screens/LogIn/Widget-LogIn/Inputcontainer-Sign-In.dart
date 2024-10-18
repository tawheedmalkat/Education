import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/Screens/LogIn/Widget-LogIn/textField-Sign-In.dart';

import '../../../Widgets/Custome-Button.dart';
import '../Sign-In-Controller.dart';
import '../Sign-In-Screen.dart';

class InputContainer extends StatelessWidget {
  final SignInController controller = Get.find();
  final double screenWidth;

   InputContainer({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -170,
            left: screenWidth / 2 - (screenWidth * 0.4),
            child: CenteredImage(imagePath: "assets/Images/img_3.png", widthFactor: 0.8),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(80),
              border: Border.all(
                color: Colors.blue,
                width: 10,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomInputField(label: "User Name",
                    hintText: "Enter your User name",
                  controller: controller.userNameController,),
                CustomInputField(label: "School Name",  controller: controller.schoolNameController,hintText: "Enter your school name"),
                CustomInputField(label: "ID Number",controller: controller.idNumberController, hintText: "Enter your ID"),
              ],
            ),
          ),
          Positioned(
            bottom: -40,
            left: screenWidth * 0.3,
            child: ButtonForword(
              text: "LOGIN",
              height: 60,
              width: screenWidth * 0.4,
              fontWidth: screenWidth * 0.09,
              onTap: () {
                Get.toNamed('/Chapters');
              },
            ),
          ),
        ],
      ),
    );
  }
}