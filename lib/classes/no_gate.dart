import 'dart:ui' as ui;
import 'package:flutter/material.dart';


class no_gate extends StatefulWidget {
  String path="";
  double height, width;
  int rotation;


  no_gate({this.height=100, this.width=150, this.rotation=3}) {
    path = "assets/images/gates/Picture.png";
    height = height;
    width = width;
    rotation = rotation;
  }
  int activation(int x) {
    if (x == 1) {
      return 0;
    } else {
      return 1;
    }
  }

  @override
  _no_gateState createState() => _no_gateState(height: this.height,width: this.width,rotation: this.rotation);
}

class _no_gateState extends State<no_gate> {
  String path = "assets/images/gates/Picture.png";
  double height,width;
  int rotation;

  _no_gateState({this.height=100, this.width=150, this.rotation=3}) {
    path = "assets/images/gates/Picture.png";
    height = height;
    width = width;
    rotation = rotation;
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: RotatedBox(
          quarterTurns: widget.rotation,
          child: FlatButton(
            onPressed: () {
              Overlay.of(context)?.insert(_getEntry(context));
            },
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
  OverlayEntry _getEntry(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
      opaque: false,
      maintainState: true,
      builder: (_) => Positioned(
        left: 0,
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 600,
                    height: 400,
                    color: Colors.black,
                    child: Column(children: [Material(child: IconButton(onPressed: (){entry.remove();}, icon: Icon(Icons.close)),),Image.asset('../../assets/images/gates/no_gate_inf.png')],)
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return entry;
  }





}
