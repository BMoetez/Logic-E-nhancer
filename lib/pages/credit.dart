// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:logic_enhancer/pages/lessons.dart';
import '../main.dart';
import 'levels.dart';
import 'dart:ui' as ui;
import 'dart:ui' as ui;


// ignore: camel_case_types
class credits extends StatefulWidget {
  @override
  State<credits> createState() => _creditsState();
}

class _creditsState extends State<credits> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Material(
                child: Padding(padding: EdgeInsets.fromLTRB(5, 10, 10, 10), child:IconButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())
                      );
                    },
                    icon: Icon(

                      Icons.arrow_back_ios_sharp,
                      size: 35,
                      color: Colors.white,
                    )) ,) ,
                color: Color.fromRGBO(231, 218, 199, 0),
              ),
            ),
            const Text(
              "CREDITS",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  decoration: TextDecoration.none,
                  fontFamily: 'Digital7'),
            ),SizedBox(height: 180),
            SizedBox(
              width: 500,
              height: 70,
              child: RaisedButton(
                onPressed: () {
                  Overlay.of(context)?.insert(_getEntry1(context));
                },
                textColor:  Colors.black,
                color:  const Color(0xFFa0b6f7),
                hoverColor: const Color(0xFFf2f261),

                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    const Text(
                  "FIRAS NECIB",
                  style: TextStyle(fontSize: 55),
                )],) ,
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 70,
              child: RaisedButton(
                onPressed: () {
                  Overlay.of(context)?.insert(_getEntry(context));
                },
                textColor: Colors.black,
                color: const Color(0xFFa0b6f7),
                hoverColor: const Color(0xFFf2f261),

                child:  Row(mainAxisAlignment: MainAxisAlignment.center,children: [

                  SizedBox(width: 20),
                  const Text(
                  "WASSIM CHOUCHEN",
                  style: TextStyle(fontSize: 55),
                )],) ,
              ),) ,
            SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 70,
              child: RaisedButton(
                onPressed: () {
                  Overlay.of(context)?.insert(_getEntry2(context));

                },
                textColor: Colors.black,
                color: const Color(0xFFa0b6f7),
                hoverColor: const Color(0xFFf2f261),

                child:  Row(mainAxisAlignment: MainAxisAlignment.center,children: [

                  SizedBox(width: 20),
                  const Text(
                  "MOETEZ BOUHLEL",
                  style: TextStyle(fontSize: 55),
                )],) ,
              ),) ,SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 70,
              child: RaisedButton(
                onPressed: () {
                  Overlay.of(context)?.insert(_getEntry3(context));
                   },
                textColor: Colors.black,
                color: const Color(0xFFa0b6f7),
                hoverColor: const Color(0xFFf2f261),

                child:  Row(mainAxisAlignment: MainAxisAlignment.center,children: [

                  SizedBox(width: 20),
                  const Text(
                  "MOHAMED SOUID",
                  style: TextStyle(fontSize: 55),
                )],) ,
              ),) ,
          ],
        )
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
                    width: 380,
                    height: 580,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "../../assets/images/wassim.jpg.jpeg",
                          scale: 0.8,
                        ),
                        TextButton(
                            onPressed: () {
                              entry.remove();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => credits()));
                            },
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 20),
                            ))

                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
    return entry;
  }
  OverlayEntry _getEntry1(context) {
    OverlayEntry entry1 = OverlayEntry(builder: (_) => Container());

    entry1 = OverlayEntry(
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
                    height: 600,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "../../assets/images/firas.jpg",
                          scale: 0.8,
                        ),
                        TextButton(
                            onPressed: () {
                              entry1.remove();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => credits()));
                            },
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 20),
                            )),

                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
    return entry1;
  }
  OverlayEntry _getEntry3(context) {
    OverlayEntry entry3 = OverlayEntry(builder: (_) => Container());

    entry3 = OverlayEntry(
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
                    height: 600,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "../../assets/images/hama.jpg",
                          scale: 0.8,
                        ),
                        TextButton(
                            onPressed: () {
                              entry3.remove();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => credits()));
                            },
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 20),
                            )),


                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
    return entry3;
  }
  OverlayEntry _getEntry2(context) {
    OverlayEntry entry2 = OverlayEntry(builder: (_) => Container());

    entry2 = OverlayEntry(
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
                    height: 600,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "../../assets/images/moetz.png",
                          scale: 0.8,
                        ),
                        TextButton(
                            onPressed: () {
                              entry2.remove();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => credits()));
                            },
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 20),
                            )),

                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
    return entry2;
  }
}
