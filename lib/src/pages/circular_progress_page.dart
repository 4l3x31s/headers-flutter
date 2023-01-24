import 'dart:math';

import 'package:flutter/material.dart';


class CircularProgressPage extends StatefulWidget {

  @override
  State<CircularProgressPage> createState() => _CircularProgressPageState();
}

class _CircularProgressPageState extends State<CircularProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 300,
          height: 300,
          //color: Colors.red,
          child: CustomPaint(
            painter: _MiRadialProgress(),
          ),
        ),
      ),
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    //Circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    Offset center = new Offset( size.width * 0.5, size.height/2);

    double radio = min(size.width *0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }
}