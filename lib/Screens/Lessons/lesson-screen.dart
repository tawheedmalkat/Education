import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/Screens/Lessons/widget-lesson/lesson-App-Bar.dart';
import 'package:test1/Screens/Lessons/lesson-controller/profile-image-controller.dart';
import 'package:test1/Screens/Lessons/widget-lesson/task-container.dart';
import '../../Widgets/Custome-Button.dart';
import '../Choosing/Choosing-Screen.dart';

import 'lesson-controller/controller-audio.dart';
import 'widget-lesson/lesson-Grid-View.dart';

class LessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final profileController = Get.put(ProfileController());

    final selectedCountry = Rxn<Map<String, String>>();
    final countries = _getCountries();
    final lessons = _getLessons();

    return Scaffold(
      appBar: LessonsAppBar(selectedCountry: selectedCountry, countries: countries, profileController: profileController),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            TaskContainer(),
            SizedBox(height: 10),
            _buildLessonTitle(),
            SizedBox(height: 10),
            LessonsGrid(lessons: lessons),
          ],
        ),
      ),
    );
  }

  Padding _buildLessonTitle() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, left: 20),
      child: Text(
        "Your Lessons:",
        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  List<Map<String, String>> _getCountries() {
    return [
      {"name": "Palestine", "flag": "🇵🇸"},
      {"name": "United States", "flag": "🇺🇸"},
      {"name": "Canada", "flag": "🇨🇦"},
      {"name": "France", "flag": "🇫🇷"},
      {"name": "Germany", "flag": "🇩🇪"},
      {"name": "Japan", "flag": "🇯🇵"},
    ];
  }

  List<Map<String, String>> _getLessons() {
    return [
      {'title': 'History', 'image': 'assets/Images/History-Image.jpeg'},
      {'title': 'Mathematics', 'image': 'assets/Images/Math-Image.jpeg'},
      {'title': 'Sciences', 'image': 'assets/Images/mapone.jpeg'},
      {'title': 'Arabic', 'image': 'assets/Images/Arabic-Map.jpeg'},
      {'title': 'English', 'image': 'assets/Images/mapthree.jpeg'},
      {'title': 'Technology', 'image': 'assets/Images/maptwo.jpeg'},
    ];
  }
}








