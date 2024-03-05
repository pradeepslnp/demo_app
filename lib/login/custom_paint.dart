import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class AppBarCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.cubicTo(
        size.width * 1.4500000,
        size.height * 1.072165,
        size.width * 0.4500000,
        size.height * 7.072165,
        1,
        size.height * 6.7731959);
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.4385028, size.height * 0.5440495),
        Offset(size.width * 0.8021389, size.height * 0.5440495),
        [Color(0xFF6B5AE0).withOpacity(1), Color(0xFF6B5AE0).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AppBarCurve2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFF5AE0AE);

    final path = Path();
    path.moveTo(0, size.height - 250); // Move to the bottom-left corner
    path.lineTo(
        size.width, size.height - 250); // Draw line to the bottom-right corner
    path.lineTo(
        size.width, size.height * 1); // Draw line to the top-right corner
    // Draw a quadratic Bezier curve to create a smooth curve
    path.cubicTo(size.width * 1.4500000, size.height * 1.072165,
        size.width * 0.4500000, size.height * 7.072165, 0, size.height);
    path.close(); // Close the path to form a closed shape

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
