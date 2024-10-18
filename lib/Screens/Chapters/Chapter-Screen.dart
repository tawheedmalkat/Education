
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get/get.dart';

import '../../Widgets/Bottom-Nav-Bar.dart';

class ChaptersScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/Images/img_4.png",
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 120,
            left: 250,
            right: 0,
            child: Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
          ),

          CustomPaint(
            painter: DottedCurveArrowPainter(),
            child: Container(),
          ),
          Positioned(
            top: 150,
            left: 50,
            child: ChapterItem(
                image: "assets/Images/chapterone.jpeg",
                title: 'Chapter one',
                color: Colors.green,
                progress: 0.75, onTap: () { Get.toNamed('/lessons');}
            ),
          ),
          Positioned(
            top: 350,
            right: 50,
            child: ChapterItem(
              image: "assets/Images/Chapter-Two-Image.jpeg",
              title: 'Chapter Two',
              color: Colors.orange,
              progress: 0.5, onTap: () {  },
            ),
          ),
          Positioned(
            bottom: 150,
            left: 60,
            child: ChapterItem(
              onTap: (){},
              image: "assets/Images/Awards.jpeg",
              title: 'Awards',
              color: Colors.red,
              progress: 0.9,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomNavigationBar(),
          ),
        ],
      ),
    );
  }
}

class DottedCurveArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;


    final path1 = Path();
    path1.moveTo(100, 200);
    path1.quadraticBezierTo(400, 100, 300, 350);

    final path2 = Path();
    path2.moveTo(300, 400);
    path2.quadraticBezierTo(10, 350, 150, 600);


    drawDottedPath(canvas, path1, paint);
    drawDottedPath(canvas, path2, paint);
  }

  void drawDottedPath(Canvas canvas, Path path, Paint paint) {
    final PathMetrics pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      double distance = 0.0;
      final double dashLength = 5.0;
      final double spaceLength = 5.0;
      while (distance < pathMetric.length) {
        final Path extractPath =
        pathMetric.extractPath(distance, distance + dashLength);
        canvas.drawPath(extractPath, paint);
        distance += dashLength + spaceLength;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class ChapterItem extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final double progress;
  final VoidCallback onTap;

  ChapterItem({
    required this.image,
    required this.title,
    required this.color,
    required this.progress,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 6,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                ),
              ),
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(image),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

