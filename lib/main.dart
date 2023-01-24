import 'package:custom_painter/src/pages/animaciones_page.dart';
import 'package:custom_painter/src/pages/circular_progress_page.dart';
import 'package:custom_painter/src/pages/headers_page.dart';
import 'package:custom_painter/src/retos/cuadrado_animado_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CircularProgressPage()
    );
  }
}