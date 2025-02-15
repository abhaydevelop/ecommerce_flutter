import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    /*Use left carve*/
    final firstCarve = Offset(0, size.height - 20);
    final lastCarve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCarve.dx, firstCarve.dy, lastCarve.dx, lastCarve.dy);

    /*use for line after left carver*/
    final secondFirstCarve = Offset(0, size.height - 20);
    final secondLastCarve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondFirstCarve.dx, secondFirstCarve.dy, secondLastCarve.dx, secondLastCarve.dy);

    /*use for right carve */
    final thirdFirstCarve = Offset(size.width, size.height - 20);
    final thirdLastCarve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdFirstCarve.dx, thirdFirstCarve.dy, thirdLastCarve.dx, thirdLastCarve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
