import 'package:flutter/material.dart';

import 'Lesson-Card.dart';

class LessonsGrid extends StatelessWidget {
  final List<Map<String, String>> lessons;

  LessonsGrid({required this.lessons});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
      ),
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return LessonCard(lesson: lesson);
      },
    );
  }
}