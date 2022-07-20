
import 'package:flutter/material.dart';

class ShapeDashboard extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height-90);
    path.quadraticBezierTo(width/2, height, width, height-90);
    path.lineTo(width, 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }
}