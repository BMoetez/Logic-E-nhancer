// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import '../main.dart';

bool hovering = false;

// ignore: camel_case_types
class credits extends StatefulWidget {
  @override
  State<credits> createState() => _creditsState();
}

class _creditsState extends State<credits> {
int colorindex=0;
late Timer timer;
@override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        colorindex++;
        if (colorindex>15)colorindex=0;
      });
     });
  }

 @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

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
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 35,
                        color: Colors.white,
                      )),
                ),
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
            ),
            SizedBox(height: 180),
            SizedBox(
              width: 500,
              height: 70,
              child: IgnorePointer(
                ignoring: hovering,
                child: TextButton(onPressed:() {
                    Overlay.of(context)?.insert(_getEntry2(context));
                    setState(() {
                      hovering = !hovering;
                    });
                  } , child: Text("MOETEZ BOUHLEL",style: TextStyle(fontSize: 55,color:(colorindex==1)? Color(colors[ind])
                                :( colorindex==3)? Color(colors[ind+1]) :Colors.white))),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 70,
              child: IgnorePointer(
                ignoring: hovering,
                child: TextButton(onPressed:() {
                    Overlay.of(context)?.insert(_getEntry(context));
                    setState(() {
                      hovering = !hovering;
                    });
                  } , child: Text("WASSIM CHOUCHEN",style: TextStyle(fontSize: 55,color:(colorindex==5)? Color(colors[ind])
                    :( colorindex==7)? Color(colors[ind+1]) :Colors.white),)),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 70,
              child: IgnorePointer(
                ignoring: hovering,
                child: TextButton(onPressed:() {
                    Overlay.of(context)?.insert(_getEntry1(context));
                    setState(() {
                      hovering = !hovering;
                    });
                  } , child: Text("FIRAS NECIB",style: TextStyle(fontSize: 55,color:(colorindex==9)? Color(colors[ind])
                    :( colorindex==11)? Color(colors[ind+1]) :Colors.white ),)),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 70,
              child: IgnorePointer(
                ignoring: hovering,
                child: TextButton(onPressed:() {
                    Overlay.of(context)?.insert(_getEntry3(context));
                    setState(() {
                      hovering = !hovering;
                    });
                  } , child: Text("MOHAMED SOUID",style: TextStyle(fontSize: 55,color:(colorindex==13)? Color(colors[ind])
                    :( colorindex==15)? Color(colors[ind+1]) :Colors.white ),)),
              ),
            ),
          ],
        ));
  }

  OverlayEntry _getEntry(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
              onTap: () {
                entry.remove();
                setState(() {
                  hovering = !hovering;
                });
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
                          width: 280,
                          height: 200,
                          //color: Colors.black,
                          child: Image.asset(
                            "assets/images/credit/wassim.jpg",
                            scale: 0.8,
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

  OverlayEntry _getEntry1(context) {
    OverlayEntry entry1 = OverlayEntry(builder: (_) => Container());

    entry1 = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
              onTap: () {
                entry1.remove();
                setState(() {
                  // ignore: unnecessary_statements
                  hovering = !hovering;
                });
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
                          width: 350,
                          height: 600,
                          //color: Colors.black,
                          child: Image.asset(
                            "assets/images/credit/firas.jpg",
                            scale: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry1;
  }

  OverlayEntry _getEntry3(context) {
    OverlayEntry entry3 = OverlayEntry(builder: (_) => Container());

    entry3 = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
              onTap: () {
                entry3.remove();
                setState(() {
                  hovering = !hovering;
                });
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
                          width: 220,
                          height: 320,
                          //color: Colors.black,
                          child: Image.asset(
                            "assets/images/credit/souid.jpg",
                            scale: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry3;
  }

  OverlayEntry _getEntry2(context) {
    OverlayEntry entry2 = OverlayEntry(builder: (_) => Container());

    entry2 = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
              onTap: () {
                entry2.remove();
                setState(() {
                  hovering = !hovering;
                });
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
                          width: 220,
                          height: 320,
                          //color: Colors.black,
                          child: Image.asset(
                            "assets/images/credit/moetez.jpg",
                            scale: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry2;
  }
}
