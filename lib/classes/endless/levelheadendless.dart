import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:logic_enhancer/pages/levels.dart';

import '../../main.dart';

bool hovering = false;

class levelheadendless extends StatefulWidget {
  String n = '';
  Widget f = Container();
  int mov = 0;

  levelheadendless(String n, Widget f, {this.mov = 5}) {
    this.n = n;
    this.f = f;
    this.mov = mov;
  }

  @override
  _levelheadendlessState createState() => _levelheadendlessState(this.n,this.f);
}

class _levelheadendlessState extends State<levelheadendless> {
  String n = '';
  Widget f = Container();
  _levelheadendlessState(String n,Widget f) {
    this.n = n;
    this.f = f;

  }
  void losepage(){
    if(widget.mov==0){
      WidgetsBinding.instance?.addPostFrameCallback(
              (_) => Overlay.of(context)?.insert(_getEntry3(context)));
    }
  }

  @override
  Widget build(BuildContext context) {
    losepage();
    return Material(
      child: Container(
          child: Row(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 120,
                width: 120,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Levels()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 40,
                    color: Color(colors[ind+1]),
                  ),
                ),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 280,
                child: Text(
                  'MOVES LEFT:${widget.mov}',
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              )),
          Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 280, 0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.all_inclusive_rounded,size: 80,color: Colors.blue,)
            ),
          ),
          Spacer(),
          IgnorePointer(
            ignoring: hovering,
            child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: IconButton(
                      onPressed: () {
                        Overlay.of(context)?.insert(_getEntry2(context));
                        setState(() {
                          hovering = !hovering;
                        });
                      },
                      icon: Icon(
                        Icons.question_mark_rounded,
                        size: 40,
                        color: Color(colors[ind+1]),
                      )),
                )),
          )
        ],
      )),
      color: Color.fromRGBO(0, 0, 0, 0),
    );
  }

  OverlayEntry _getEntry2(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
              onTap: () {},
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
                          width: 500,
                          height: 350,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Material(
                                  child: IconButton(
                                    onPressed: () {
                                      entry.remove();
                                      setState(() {
                                        hovering = !hovering;
                                      });
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                                child: Text(
                                  "HINT",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Text(
                                    "Click On the logic gate to find out how it works",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        height: 1.2),
                                    textAlign: TextAlign.center,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry;
  }
  OverlayEntry _getEntry3(context) {
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
                  width: 500,
                  height: 350,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                        child: Text(
                          "Oh No ",
                          style: TextStyle(fontSize: 40, color: Colors.red),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 100),
                          child: Text("No moves left. Try again",style: TextStyle(color: Colors.white,fontSize: 30,height: 1.2),textAlign: TextAlign.center,)
                      ),
                      TextButton(onPressed: (){Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => f),
                            (Route<dynamic> route) => false,
                      );
                      entry.remove();}, child: Text("Try Again",style: TextStyle(fontSize: 50),))
                    ],
                  ),
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
