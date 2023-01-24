import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: CuadradoAnimado(),
      )
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  late Animation<double> rotacion;
  late Animation<double> opacidad;
  late Animation<double> opacidadOut;
  late Animation<double> moverDerecha;
  late Animation<double> agrandar;

  @override
  void initState() {
    controller = new  AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000)
    );

    /*rotacion = Tween(
      begin: 0.0,
      end: 4.0 * Math.pi
    ).animate(controller);*/
    rotacion = Tween(
      begin: 0.0,
      end: 4.0 * Math.pi
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticOut
      )
      
    );

    opacidad = Tween(begin: 0.1, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0, 0.25, curve: Curves.easeOut)//define el tiempo
      )
    );

    opacidadOut = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.75,1.0, curve: Curves.easeOut)//define el tiempo
      )
    );

    moverDerecha = Tween(
      begin: 0.0,
      end: 200.0
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOut
      )
    );

    agrandar = Tween(
      begin: 0.0,
      end: 2.0
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOut
      )
    );


    controller.addListener(() {
      //print('status: ${controller.status}');
      if(controller.status == AnimationStatus.completed){
        //controller.reverse();
        controller.reset();
      }/*else if(controller.status == AnimationStatus.dismissed){
        controller.forward();
      }*/
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //bton play
    //siempre va a lanzar
    controller.forward();



    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget? child) {
        
        return Transform.translate(
          offset: Offset(moverDerecha.value,0),
          child: Transform.rotate(
            angle: rotacion.value,
            //child: _Rectangulo(),
            child: Opacity(
              opacity: opacidadOut.value,
              child: Opacity(
                opacity: opacidad.value,
                child: Transform.scale(
                  scale: agrandar.value,
                  child: child
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}