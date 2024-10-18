import 'dart:io';

import 'package:flutter/material.dart';

import '../Screens/Lessons/lesson-controller/profile-image-controller.dart';

class ProfileImage extends StatelessWidget {
  final ProfileController profileController;

  ProfileImage({required this.profileController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.blue, width: 5.0),
      ),
      child: InkWell(
        onTap: () async {
          File? imageFile = await profileController.pickImage();
          if (imageFile != null) {
            // Handle image selection
          }
        },
        child: CircleAvatar(
          backgroundColor: Colors.blueGrey.withOpacity(0.1),
          radius: 30,
          backgroundImage: profileController.imageFile != null ? FileImage(profileController.imageFile!) : null,
          child: profileController.imageFile == null ? Icon(Icons.person, size: 30, color: Colors.blue) : null,
        ),
      ),
    );
  }
}