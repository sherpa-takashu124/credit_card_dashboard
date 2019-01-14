import 'package:flutter/material.dart';

class CustomShapeclipper extends CustomClipper<Path> {

  @override
 Path getClip(Size size) {
final Path path = Path();
path.lineTo(0.0, size.height);
var firstendPoint= Offset(size.width * 0.5, size.height - 62.0);
var firstControlPoint= Offset(size.width* 0.25, size.height -80.0);
path.quadraticBezierTo(firstControlPoint.dx,firstControlPoint.dy ,firstendPoint.dx, firstendPoint.dy);
var secondendPoint = Offset(size.width, size.height -100.0);
var secondControllPoint = Offset(size.width * 0.75, size.height -50);
path.quadraticBezierTo(secondControllPoint.dx, secondControllPoint.dy, secondendPoint.dx, secondendPoint.dy);
path.lineTo(size.width, size.height);
path.lineTo(size.width, 0.0);
return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
return true;
  }
}