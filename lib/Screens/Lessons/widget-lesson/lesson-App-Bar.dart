import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Widgets/profile-Image.dart';
import '../lesson-controller/controller-audio.dart';
import '../lesson-screen.dart';
import '../lesson-controller/profile-image-controller.dart';

class LessonsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Rxn<Map<String, String>> selectedCountry;
  final List<Map<String, String>> countries;
  final ProfileController profileController;


  LessonsAppBar({
    required this.selectedCountry,
    required this.countries,
    required this.profileController,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.red, size: 30),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0, right: 10),
          child: Obx(() => PopupMenuButton<Map<String, String>>(
            icon: selectedCountry.value == null
                ? Icon(Icons.language, color: Colors.blue, size: 30)
                : Row(
              children: [
                Text(selectedCountry.value!['flag']!, style: TextStyle(fontSize: 20)),
                SizedBox(width: 5),
                Text(selectedCountry.value!['name']!, style: TextStyle(color: Colors.blue)),
              ],
            ),
            onSelected: (country) {
              selectedCountry.value = country;
            },
            itemBuilder: (context) {
              return countries.map((country) {
                return PopupMenuItem<Map<String, String>>(
                  value: country,
                  child: Row(
                    children: [
                      Text(country['flag']!, style: TextStyle(fontSize: 20)),
                      SizedBox(width: 10),
                      Text(country['name']!),
                    ],
                  ),
                );
              }).toList();
            },
          )),
        ),
      ],
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0, top: 20),
        child: ProfileImage(profileController: profileController),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}