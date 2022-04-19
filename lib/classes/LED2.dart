// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../main.dart';


class LED extends StatefulWidget {
   int x;
  LED({Key? key, required this.x}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<LED> createState() => _LEDState();
}

// ignore: camel_case_types
class _LEDState extends State<LED> {
  var path = [
    "assets/images/light/light no.png",
    "assets/images/light/light yes.png"
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => win_page());
    return Material(
      child: Image.asset(
        path[widget.x],
        width: 150,
        height: 100,
      ),
      color: const Color.fromRGBO(0, 0, 0, 0),
    );
  }

  void win_page(){
    if(widget.x==1){
      Future.delayed(Duration(milliseconds: 500),((){
    Overlay.of(context)?.insert(_getEntry(context));
    }));
    }
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
                  width: 350,
                  height: 350,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                        child: Text(
                          "Good Job",
                          style: TextStyle(fontSize: 40, color: Colors.green),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: SizedBox(
                          width: 230,
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {

                              },
                              child: Text(
                                "Next Level",
                                style: TextStyle(fontSize: 30,color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 3.0, color: Colors.white))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: SizedBox(
                          width: 230,
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {
                                //Navigator.pushAndRemoveUntil(
                                 // context,
                                 // MaterialPageRoute(
                                   //   builder: (context) => this),
                                     // (Route<dynamic> route) => false,
                                //);
                                //entry.remove();
                              },
                              child: Text(
                                "Restart Level",
                                style: TextStyle(fontSize: 30,color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 3.0, color: Colors.white))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: SizedBox(
                          width: 230,
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                entry.remove();
                              },
                              child: Text(
                                "Main Menu",
                                style: TextStyle(fontSize: 30,color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 3.0, color: Colors.white))),
                        ),
                      ),
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
