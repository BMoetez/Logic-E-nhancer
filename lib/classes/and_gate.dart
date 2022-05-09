import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:logic_enhancer/main.dart';

class and_gate extends StatefulWidget {
  double height, width;
  int rotation;
  late var path;
  and_gate({this.height = 100, this.width = 150, this.rotation = 3}) {
    height = height;
    width = width;
    rotation = rotation;
    path = ValueNotifier('');
  }

  int activation(int x,int y) {
   if(ind==0) {if (x == 1 && y == 1) {
      path.value = 'assets/images/gates/and/4.png';
      return 1;
    } else if (x == 1 && y == 0) {
      path.value = 'assets/images/gates/and/2.png';
      return 0;
    } else if (x == 0 && y == 1) {
      path.value = 'assets/images/gates/and/3.png';
      return 0;
    } else {
      path.value = 'assets/images/gates/and/1.png';
      return 0;
    }
   }else{
     if (x == 1 && y == 1) {
       path.value = 'assets/images/gates/and/4copy.png';
       return 1;
     } else if (x == 1 && y == 0) {
       path.value = 'assets/images/gates/and/2copy.png';
       return 0;
     } else if (x == 0 && y == 1) {
       path.value = 'assets/images/gates/and/3copy.png';
       return 0;
     } else {
       path.value = 'assets/images/gates/and/1copy.png';
       return 0;
     }
   }
  }

  @override
  _and_gateState createState() => _and_gateState(
      height: this.height, width: this.width, rotation: this.rotation);
}

class _and_gateState extends State<and_gate> {
  double height = 50, width = 50;
  int rotation;

  _and_gateState({this.height = 100, this.width = 150, this.rotation = 3}) {
    height = height;
    width = width;
  }

  void didChangeDependencies() {
    precacheImage(AssetImage("assets/images/gates/and/1.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/2.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/3.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/4.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/1copy.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/2copy.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/3copy.png"), context);
    precacheImage(AssetImage("assets/images/gates/and/4copy.png"), context);

    super.didChangeDependencies();
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
                            width: 600,
                            height: 400,
                            color: Colors.black,
                            child: Image.asset(
                                    '../../assets/images/gates/and_gate_inf.png')),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry;
  }
}
