// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Nand_gate {
  String path = "";
  double height, width;
  int rotation;

  Nand_gate({this.height=100, this.width=150, this.rotation=3}) {
    path = "assets/images/gates/3.png";
    height = height;
    width = width;
    rotation = rotation;
  }

  Widget show() {
    return Material(
      child: RotatedBox(
          quarterTurns: rotation,
          child: FlatButton(
            onPressed: () {},
            child: Image.asset(
              path,
              fit: BoxFit.cover,
              height: height,
            ),
            padding: EdgeInsets.zero,
          )),
      color: const Color.fromRGBO(0, 0, 0, 0),
    );
  }

 int activation(int x,int y) {
    if (x == 1 && y==1 ) {
      return 0;
    } else {
      return 1;
    }
  }
}
