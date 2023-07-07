import 'package:flutter/material.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';

 





class PolygonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColor.blackcolor
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(43.14, 0)
      ..lineTo(43.14, 26.67)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}



class PolygonPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColor.splashtitlecolor
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width - 43.14, 0)
      ..lineTo(size.width - 43.14, 26.67)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}






