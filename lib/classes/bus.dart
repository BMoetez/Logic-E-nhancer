import 'package:flutter/material.dart';
import 'button.dart';

class Bus extends CustomPaint{
  double hor_length,ver_length1,ver_length2,stroke,dx,dy;
  int activate=0;
  Bus({this.hor_length=50,this.ver_length1=50,this.ver_length2=50,this.stroke=4,this.activate=0,this.dx=0,this.dy=0}){
    this.hor_length = hor_length;
    this.ver_length1 = ver_length1;
    this.ver_length2 = ver_length2;
    this.stroke = stroke;
    this.activate = activate;
    this.dx = dx;
    this.dy = dy;
  }

  Widget show() {
    return Container( 
      padding: EdgeInsets.zero,
      child: CustomPaint( 
        painter: MyPainter(hor: hor_length,ver1: ver_length1,ver2: ver_length2,stroke: stroke,activate: activate,dx: dx,dy: dy),
      ),
    );
  }

}


class MyPainter extends CustomPainter {
  double hor,ver1,ver2,stroke,dx,dy;
  int activate;
  MyPainter ({this.hor=50,this.ver1=50,this.ver2=50,this.stroke=4,this.activate=0,this.dx=0,this.dy=0}){
      this.hor = hor;
      this.ver1 = ver1;
      this.ver2 = ver2;
      this.stroke = stroke;
      this.activate = activate;
      this.dx = dx;
      this.dy = dy;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(0, 0);
    final p2 = Offset(hor, 0);


    Offset p3,p4,p5,p6;

    if(hor > 0) {
      p3 = Offset(0 +(stroke/2), 0);
      p4 = Offset(0 +(stroke/2), ver1);
      p5 = Offset(hor - (stroke / 2), 0);
      p6 = Offset(hor - (stroke / 2), -ver2);
    }else{
      p3 = Offset(hor + (stroke / 2), 0);
      p4 = Offset(hor + (stroke / 2), ver1);
      p5 = Offset(0 - (stroke / 2), 0);
      p6 = Offset(0 - (stroke / 2), -ver2);
    }
    canvas.translate(dx,dy);


    if(this.activate==0) {
      final paint = Paint()
        ..color = Colors.blue
        ..strokeWidth = stroke;
      canvas.drawLine(p1, p2, paint);
      canvas.drawLine(p3, p4, paint);
      canvas.drawLine(p5, p6, paint);

    }else{
      final paint = Paint()
        ..color = Colors.amber
        ..strokeWidth = stroke;
      canvas.drawLine(p1, p2, paint);
      canvas.drawLine(p3, p4, paint);
      canvas.drawLine(p5, p6, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}