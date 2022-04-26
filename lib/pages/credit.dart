// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:logic_enhancer/pages/lessons.dart';
import '../main.dart';
import 'levels.dart';
import 'dart:ui' as ui;
import 'dart:ui' as ui;import 'dart:ui' as ui;import 'dart:ui' as ui;


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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Levels())
                  );
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
                      (_) => Overlay.of(context)?.insert(_getEntry(context));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Lessons()));

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
                    width: 700,
                    height: 450,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "../../assets/images/wassim.jpg.jpeg",
                          scale: 0.5,
                        ),
                        TextButton(
                            onPressed: () {
                              entry.remove();
                            },
                            child: Text(
                              "HELLO",
                              style: TextStyle(fontSize: 50),
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
}
