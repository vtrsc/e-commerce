import 'package:flutter/material.dart';

    class MyClipper2 extends CustomClipper<Path> {
      @override
      Path getClip(Size size) {
        var path = Path();
        path.lineTo(0, 220);
        path.quadraticBezierTo(
            size.width / 4, 160 /*180*/, size.width / 2, 175);
        path.quadraticBezierTo(
            3 / 4 * size.width, 190, size.width, 130);
        path.lineTo(size.width, 0);
        path.close();
        return path;
      }

      @override
      bool shouldReclip(CustomClipper<Path> oldClipper) {
        return false;
      }
    }