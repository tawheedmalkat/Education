import 'dart:ui';
import 'package:flutter/material.dart';

class DottedCurveArrowPainter extends CustomPainter {
  final Color color; // لون الخط
  final List<Offset> points; // نقاط البداية والنهاية

  DottedCurveArrowPainter({required this.color, required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // إعداد المسارات المنحنية بناءً على النقاط
    final path1 = Path()
      ..moveTo(points[0].dx, points[0].dy)
      ..quadraticBezierTo(points[1].dx, points[1].dy, points[2].dx, points[2].dy);

    final path2 = Path()
      ..moveTo(points[3].dx, points[3].dy)
      ..quadraticBezierTo(points[4].dx, points[4].dy, points[5].dx, points[5].dy);

    // رسم المسار المنقط
    drawDottedPath(canvas, path1, paint);
    drawDottedPath(canvas, path2, paint);
  }

  void drawDottedPath(Canvas canvas, Path path, Paint paint) {
    final pathMetrics = path.computeMetrics();
    for (final pathMetric in pathMetrics) {
      double distance = 0.0;
      const double dashLength = 5.0;
      const double spaceLength = 5.0;
      while (distance < pathMetric.length) {
        final extractPath = pathMetric.extractPath(distance, distance + dashLength);
        canvas.drawPath(extractPath, paint);
        distance += dashLength + spaceLength;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
