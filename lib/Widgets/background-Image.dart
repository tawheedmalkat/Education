import 'package:flutter/cupertino.dart';

class BackgroundImage extends StatelessWidget {
  final String imagePath;

  const BackgroundImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}