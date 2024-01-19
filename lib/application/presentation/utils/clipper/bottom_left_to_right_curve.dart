import 'package:flutter/material.dart';

class BottomLeftToRightCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - size.height * 0.1);
    final firstStart = Offset(size.width * 0.40, size.height);
    final firstEnd = Offset(size.width, size.height - size.height * 0.2);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
