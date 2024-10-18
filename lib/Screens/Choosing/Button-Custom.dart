
import 'package:flutter/material.dart';

import '../../Widgets/Custome-Button.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color buttonColor;
  final double width;
  final double height;

  CustomButton({
    required this.text,
    required this.onTap,
    required this.buttonColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.01),
      child: ButtonForword(
        height: height,
        fontWidth: width * 0.09,
        width: width,
        text: text,
        onTap: onTap,
        buttonColor: buttonColor,
      ),
    );
  }
}