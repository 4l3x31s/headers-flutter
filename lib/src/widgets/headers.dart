import 'package:flutter/material.dart';
class HeaderCuadrado extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
        )
      ),
    );
  }
}


class HeaderDiagonal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = Path();
    //Dibujar con el path y el lapiz
    path.moveTo(0,size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0,size.height * 0.35);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



class HeaderTriangular extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = Path();
    //Dibujar con el path y el lapiz
    //path.moveTo(0,0);
    path.lineTo(size.width, size.height);
    //path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    
    //path.lineTo(0, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



class HeaderCurvo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = Path();
    //Dibujar con el path y el lapiz
    //path.moveTo(0,0);
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width *0.5, size.height * 0.35 , size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    //path.lineTo(size.width, size.height * 0.25);
    
    
    
    
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}






class HeaderPico extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = Path();
    //Dibujar con el path y el lapiz
    //path.moveTo(0,0);
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    
    
    
    
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



class HeaderWave extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = Path();
    //Dibujar con el path y el lapiz
    //path.moveTo(0,0);
    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width *0.25, size.height * 0.35 , size.width *0.5, size.height * 0.30);
    path.quadraticBezierTo(size.width *0.75, size.height * 0.25 , size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    //path.lineTo(size.width, size.height * 0.25);
    
    
    
    
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



class HeaderWaveGradient extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    
    final Rect rect = new Rect.fromCircle(
      center: Offset(0,55.0),
      radius: 180
    );
    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff6d05e8),
        Color(0xffc012ff),
        Color(0xff6d05fa),
      ],
      stops: [
        0.2,
        0.5,
        1.0,
      ]
    );

    final lapiz = Paint()..shader = gradiente.createShader(rect);
    // Propiedades
    //lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = Path();
    //Dibujar con el path y el lapiz
    //path.moveTo(0,0);
    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width *0.25, size.height * 0.35 , size.width *0.5, size.height * 0.30);
    path.quadraticBezierTo(size.width *0.75, size.height * 0.25 , size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    //path.lineTo(size.width, size.height * 0.25);
    
    
    
    
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
