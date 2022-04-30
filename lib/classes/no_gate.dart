import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../main.dart';


class no_gate extends StatefulWidget {
  late var path;
  double height, width;
  int rotation;

  no_gate({this.height = 100, this.width = 150, this.rotation = 3}) {
    height = height;
    width = width;
    rotation = rotation;
    path = ValueNotifier('');
  }
  int activation(int x) {
    if(ind==0) {
      if (x == 1) {
        path.value = 'assets/images/gates/no/1.png';
        return 0;
      } else {
        path.value = 'assets/images/gates/no/2.png';
        return 1;
      }
    }else{
      if (x == 1) {
        path.value = 'assets/images/gates/no/2copy.png';
        return 0;
      } else {
        path.value = 'assets/images/gates/no/1copy.png';
        return 1;
      }
    }
  }

  @override
  _no_gateState createState() => _no_gateState(
      height: this.height, width: this.width, rotation: this.rotation);
}

class _no_gateState extends State<no_gate> {
  double height, width;
  int rotation;

  _no_gateState({this.height = 100, this.width = 150, this.rotation = 3}) {
    height = height;
    width = width;
    rotation = rotation;
  }

  void didChangeDependencies() {
    precacheImage(AssetImage("assets/images/gates/no/1.png"), context);
    precacheImage(AssetImage("assets/images/gates/no/2.png"), context);
    precacheImage(AssetImage("assets/images/gates/no/1copy.png"), context);
    precacheImage(AssetImage("assets/images/gates/no/2copy.png"), context);

    super.didChangeDependencies();
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
            child: ValueListenableBuilder(
                valueListenable: widget.path,
                builder: (context, String p, _) {
                  return Image.asset(
                    p,
                    fit: BoxFit.cover,
                    height: height,
                  );
                }),
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
        builder: (_) => GestureDetector(
              onTap: () {
                entry.remove();
              },
              behavior: HitTestBehavior.translucent,
              child: Positioned(
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
                            // width: 600,
                            // height: 400,
                            // color: Colors.black,
                            child:Image.asset(
                                    '../../assets/images/gates/no_gate_inf.png')),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry;
  }
}
