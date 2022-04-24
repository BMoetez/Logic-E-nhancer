import 'dart:ui' as ui;
import 'package:flutter/material.dart';


class and_gate extends StatefulWidget {
  String path = "";
  double height, width;
  int rotation;

  and_gate({this.height=100, this.width=150, this.rotation=3}) {
    path = "assets/images/gates/2.png";
    height = height;
    width = width;
    rotation = rotation;
  }

  int activation(int x, int y) {
    if (x == 1 && y == 1) {
      return 1;
    } else {
      return 0;
    }
  }
  @override
  _and_gateState createState() => _and_gateState(height : this.height,width : this.width,rotation : this.rotation);
}


class _and_gateState extends State<and_gate> {
  String path = "";
  double height=50, width=50;
  int rotation;

  _and_gateState({this.height=100, this.width=150, this.rotation=3}) {
    path = "assets/images/gates/2.png";
    height = height;
    width = width;
  }

  @override
  void setState(ui.VoidCallback fn) {
    // TODO: implement setState
    //widget.bus();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: RotatedBox(
          quarterTurns: 3,
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
                    child: Column(children: [Material(child: IconButton(onPressed: (){entry.remove();}, icon: Icon(Icons.close)),),Image.asset('../../assets/images/gates/and_gate_inf.png')],)
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