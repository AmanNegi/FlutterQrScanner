import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint paint = new Paint()
      ..color = Colors.black87
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 2.0)
      ..style = PaintingStyle.fill;

    Paint paint2 = new Paint()
      ..color = Colors.black26
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 10.0)
      ..style = PaintingStyle.fill;

    Paint paint3 = new Paint()
      ..color = Colors.grey[700]
      ..style = PaintingStyle.fill;

    Path path = new Path()
      ..moveTo(0, 0)
      ..lineTo(x * 0.57, 0)
      ..lineTo(x * 0.70, y * 0.165)
      ..lineTo(x * 0.57, y * 0.325)
      ..lineTo(x * 0.185, y * 0.325)
      ..lineTo(0, y * 0.1450)
      ..lineTo(0, 0)
      ..close();

    Path path2 = new Path()
      ..moveTo(0, 0)
      ..moveTo(x, 0)
      ..moveTo(x, y * 0.170)
      ..lineTo(x, y * 0.750)
      ..lineTo(x * 0.725, y * 0.450)
      ..lineTo(x * 0.60, y * 0.325)
      ..lineTo(x * 0.725, y * 0.170)
      ..close();

    Path path3 = new Path()
      ..moveTo(0, 0)
      ..moveTo(x, 0)
      ..lineTo(x, y * 0.155)
      ..lineTo(x * 0.725, y * 0.155)
      ..lineTo(x * 0.60, 0)
      ..lineTo(x, 0)
      ..close();

    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
