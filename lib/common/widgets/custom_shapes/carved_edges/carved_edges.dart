import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}