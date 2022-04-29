import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:logic_enhancer/pages/lessons.dart';


class Nor_Lesson3 extends StatefulWidget {
  const Nor_Lesson3({Key? key}) : super(key: key);

  @override
  _Nor_Lesson3State createState() => _Nor_Lesson3State();
}

class _Nor_Lesson3State extends State<Nor_Lesson3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(30),child: Text("QUIZ",style: TextStyle(decoration: TextDecoration.none,fontSize: 80,color: Colors.blueAccent),),),
          Padding(padding: EdgeInsets.all(30),child: Text("Choose the right output",style: TextStyle(decoration: TextDecoration.none,color: Colors.white),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Padding(padding: EdgeInsets.all(20),child: OutlinedButton(onPressed: (){Overlay.of(context)?.insert(rightanswer(context));},style: OutlinedButton.styleFrom(fixedSize: const Size(250, 80),side: BorderSide(width: 5.0, color: Colors.white),), child: Text("ONE(1)",style:TextStyle(fontSize: 50),)),),
                Padding(padding: EdgeInsets.all(20),child: OutlinedButton(onPressed: (){Overlay.of(context)?.insert(wronganswer(context));},style: OutlinedButton.styleFrom(fixedSize: const Size(250, 80),side: BorderSide(width: 5.0, color: Colors.white),), child: Text("ZERO(0)",style:TextStyle(fontSize: 50))),)
              ],),
              Image.asset("../../assets/images/lessons/nor_quiz3.png",height: 300,width: 300,)
            ],)
        ],
      ),
    );
  }
  OverlayEntry rightanswer(context) {
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
                    color: Colors.black,
                    child: Column(
                      children: [
                        Text("Congratulation ! ",style: TextStyle(fontSize: 90,color: Colors.green),),
                        SizedBox(height: 100,),
                        Text("You got it right !!",style: TextStyle(fontSize: 50,color: Colors.white)),
                        SizedBox(height: 190,),
                        OutlinedButton(onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Lessons()));
                        entry.remove();entry.remove();},style: OutlinedButton.styleFrom(fixedSize: const Size(500, 70),side: BorderSide(width: 5.0, color: Colors.white)), child: Text("To The Next Lesson ",style: TextStyle(fontSize: 50),))
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

  OverlayEntry wronganswer(context) {
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
                    color: Colors.black,
                    child: Column(
                      children: [
                        Text("Wrong Answer",style: TextStyle(fontSize: 90,color: Colors.red),),
                        SizedBox(height: 300,),
                        OutlinedButton(onPressed: (){entry.remove();},style: OutlinedButton.styleFrom(fixedSize: const Size(400, 70),side: BorderSide(width: 5.0, color: Colors.white)), child: Text("Try Again ",style: TextStyle(fontSize: 50),))
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
