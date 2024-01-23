import 'package:flutter/material.dart';

class VerticalCurvesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - size.height * 0.1);
    final firstStart = Offset(size.width * 0.50, size.height);
    final firstEnd = Offset(size.width, size.height - size.height * 0.1);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(size.width, size.height - size.height * 0.85);
    final secondStart = Offset(size.width - size.width * 0.50, size.height - size.height * 0.95);
    final secondEnd = Offset(0, size.height - size.height * 0.85);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
