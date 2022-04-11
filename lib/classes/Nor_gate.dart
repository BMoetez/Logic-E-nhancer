// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Nor_gate {
  String path = "";
  double height, width;
  int rotation;

  Nor_gate({this.height=100, this.width=150, this.rotation=2}) {
    path = "assets/images/gates/1.png";
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
    if (x == 0 && y==0 ) {
      return 1;
    } else {
      return 0;
    }
  }
}
