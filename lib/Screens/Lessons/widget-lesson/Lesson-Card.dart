import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Widgets/Custome-Button.dart';

class LessonCard extends StatelessWidget {
  final Map<String, String> lesson;

  LessonCard({required this.lesson});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('${lesson['title']} selected');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 6, offset: Offset(0, 2)),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(lesson['image']!, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    lesson['title']!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: ButtonForword(
                  fontWidth: 20,
                  height: 40,
                  width: 100,
                  text: "Play",
                  onTap: () {
                    Get.toNamed(
                      '/choose',
                      arguments: {
                        'lessonImage': lesson['image']!,
                      },
                    );
                  },
                  buttonColor: Color(0xff2EA42B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}