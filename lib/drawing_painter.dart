import 'package:flutter/material.dart';
import 'package:handwritten_number_recognizer/constants.dart';

final Paint drawingPaint = Paint()
  ..strokeCap = StrokeCap.square
  ..isAntiAlias = kIsAntiAlias
  ..color = kBlackBrushColor
  ..strokeWidth = kStrokeWidth;

class DrawingPainter extends CustomPainter {
  DrawingPainter({this.offsetPoints});
  List<Offset> offsetPoints;

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < offsetPoints.length - 1; i++) {
      if (offsetPoints[i] != null && offsetPoints[i + 1] != null) {
        canvas.drawLine(offsetPoints[i], offsetPoints[i + 1], drawingPaint);
      }
    }
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) => true;
}
