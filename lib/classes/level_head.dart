import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class LevelHead extends StatefulWidget {
  String n = '';

  LevelHead(String n) {
    this.n = n;
  }

  @override
  _LevelHeadState createState() => _LevelHeadState(this.n);
}

class _LevelHeadState extends State<LevelHead> {
  String n = '';

  _LevelHeadState(String n) {
    this.n = n;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child : Container(
        child: Row(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_sharp,size: 40, color: Color.fromRGBO(147, 112, 71, 1),),
                  ),
                )),
            const Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Level " + n,
                  style: TextStyle(
                    fontSize: 70,
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(147, 112, 71, 1),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 120,
                height: 120,
                child: IconButton(
                    onPressed: () {
                      Overlay.of(context)?.insert(_getEntry(context));
                    },
                    icon: Icon(Icons.menu,size: 40, color: Color.fromRGBO(147, 112, 71, 1),)),
              ),
            )
          ],
        ))
        ,color: Color.fromRGBO(0, 0, 0, 0),);
  }
  OverlayEntry _getEntry(context) {
    OverlayEntry entry;

    entry = OverlayEntry(
      opaque: false,
      maintainState: true,
      builder: (_) => Positioned(
        left: 100,
        bottom: 100,
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
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Text('Hello world'),
                ),
                //RaisedButton(onPressed: () => entry.remove())
              ],
            ),
          ),
        ),
      ),
    );
    return entry;
  }
}

