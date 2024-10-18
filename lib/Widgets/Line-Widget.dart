import 'dart:ui';

import 'package:flutter/material.dart';

class DottedCurveArrowPainter extends CustomPainter {
  final double startX;
  final double startY;
  final double controlX;
  final double controlY;
  final double endX;
  final double endY;

  DottedCurveArrowPainter({
    required this.startX,
    required this.startY,
    required this.controlX,
    required this.controlY,
    required this.endX,
    required this.endY,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(startX, startY);
    path.quadraticBezierTo(controlX, controlY, endX, endY);

    _drawDottedPath(canvas, path, paint);
  }

  void _drawDottedPath(Canvas canvas, Path path, Paint paint) {
    final pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      double distance = 0.0;
      const dashLength = 5.0;
      const spaceLength = 5.0;
      while (distance < pathMetric.length) {
        final extractPath =
        pathMetric.extractPath(distance, distance + dashLength);
        canvas.drawPath(extractPath, paint);
        distance += dashLength + spaceLength;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
