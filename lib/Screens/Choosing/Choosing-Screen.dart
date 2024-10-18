import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/Custome-Button.dart';
import '../../Widgets/Line-Widget.dart';
import '../Maps/Map-One-Screen.dart';
import 'Button-Custom.dart';

class ChoosingScreen extends StatelessWidget {
  final String lessonImage;

  ChoosingScreen({required this.lessonImage});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final double buttonWidth = screenWidth * 0.6;
    final double imageSize = screenWidth * 0.3;
    final double buttonHeight = 60.0;
    final double arrowSpacing = 60.0;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.1),
              child: Image.asset(
                "assets/Images/Choose-Image.png",
                width: screenWidth * 0.7,
              ),
            ),
            SizedBox(height: 40),
            _buildChildRow(imageSize, buttonWidth, buttonHeight, arrowSpacing),
            SizedBox(height: 40),
            _buildMapButton(buttonWidth, buttonHeight, arrowSpacing),
          ],
        ),
      ),
    );
  }

  Widget _buildChildRow(double imageSize, double buttonWidth, double buttonHeight, double arrowSpacing) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: imageSize * 0.1),
          child: Image.asset(
            "assets/Images/Child.png",
            width: imageSize,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(
                text: "Open The Book",
                onTap: () => Get.toNamed('/Log'),
                buttonColor: Color(0xff2EA42B),
                width: buttonWidth,
                height: buttonHeight,
              ),
              CustomPaint(
                painter: DottedCurveArrowPainter(
                  startX: buttonWidth / 2,
                  startY: 0,
                  controlX: buttonWidth * 0.8,
                  controlY: arrowSpacing,
                  endX: 0,
                  endY: arrowSpacing * 0.8,
                ),
                child: Container(),
              ),
              SizedBox(height: arrowSpacing),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMapButton(double buttonWidth, double buttonHeight, double arrowSpacing) {
    return Column(
      children: [
        CustomButton(
          text: "Go To Map",
          onTap: () => Get.to(MapOneView(mapImage: lessonImage)),
          buttonColor: Color(0xff2EA42B),
          width: buttonWidth,
          height: buttonHeight,
        ),
        CustomPaint(
          painter: DottedCurveArrowPainter(
            startX: buttonWidth / 2,
            startY: 0,
            controlX: 0,
            controlY: 200,
            endX: 200,
            endY: 80,
          ),
          child: Container(),
        ),
        SizedBox(height: 30),
        Container(
          height: buttonHeight * 2.2, // 0.13 of screen height
          width: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              lessonImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
