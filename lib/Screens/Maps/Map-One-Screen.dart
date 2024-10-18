import 'package:flutter/material.dart';
class MapOneView extends StatelessWidget {
  final String mapImage;

  MapOneView({required this.mapImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(mapImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
