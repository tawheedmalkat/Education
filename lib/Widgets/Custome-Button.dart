import 'package:flutter/material.dart';





class ButtonForword extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final double? borderWidth;
  final double? fontWidth;
  const ButtonForword({
    required this.text,
    required this.onTap,
    this.buttonColor,
    this.buttonBorderColor,
    this.borderWidth,
    Key? key,
    required this.width, this.fontWidth, required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(40),
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor ?? Color(0xff2EA42B),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: buttonBorderColor ?? Colors.transparent,
              width: borderWidth ?? 3,
            ),
          ),
          width: width,

          height: height,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: fontWidth,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
