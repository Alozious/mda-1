import 'dart:io';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  String imgPath = "assets/images/baby.jpg";
  Results({Key? key, required this.imgPath}) : super(key: key);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  static const int pink = 0xFFeb406a;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: FileImage(File(widget.imgPath)), fit: BoxFit.cover),
        color: Colors.white,
      ),
      child: Center(
        child: CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: MeshPainter()),
      ),
    );
  }
}

// PAINTER
class MeshPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.yellow;
    paint.strokeWidth = 5;

    // OUTER BOX
    paint.color = const Color(0xFFeb406a);
    paint.strokeWidth = 3;

    // TOP LEFT
    canvas.drawLine(
      Offset(size.width / 7, size.height / 9),
      Offset(size.width / 7, size.height / 6),
      paint,
    );

    canvas.drawLine(
      Offset(size.width / 7, size.height / 9),
      Offset(size.width / 4, size.height / 9),
      paint,
    );

    // TOP RIGHT
    canvas.drawLine(
      Offset(size.width / 1.1, size.height / 9),
      Offset(size.width / 1.1, size.height / 6),
      paint,
    );

    canvas.drawLine(
      Offset(size.width / 1.23, size.height / 9),
      Offset(size.width / 1.1, size.height / 9),
      paint,
    );

    // BOTTOM LEFT
    canvas.drawLine(
      Offset(size.width / 7, size.height / 1.15),
      Offset(size.width / 7, size.height / 1.23),
      paint,
    );

    canvas.drawLine(
      Offset(size.width / 7, size.height / 1.15),
      Offset(size.width / 4.4, size.height / 1.15),
      paint,
    );

    // BOTTOM RIGHT
    canvas.drawLine(
      Offset(size.width / 1.1, size.height / 1.15),
      Offset(size.width / 1.23, size.height / 1.15),
      paint,
    );

    canvas.drawLine(
      Offset(size.width / 1.1, size.height / 1.15),
      Offset(size.width / 1.1, size.height / 1.23),
      paint,
    );

    // BOTTOM LINE
    paint.color = Colors.black;
    paint.strokeWidth = 3;

    canvas.drawLine(
      Offset(size.width / 9, size.height / 1.09),
      Offset(size.width / 1.06, size.height / 1.09),
      paint,
    );

    paint.color = Colors.cyanAccent;
    paint.strokeWidth = 2;

    canvas.drawLine(
      Offset(size.width / 9, size.height / 1.08245),
      Offset(size.width / 1.06, size.height / 1.08245),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
