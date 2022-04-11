import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Or_Lesson1 extends StatefulWidget {
  const Or_Lesson1({Key? key}) : super(key: key);

  @override
  _Or_Lesson1State createState() => _Or_Lesson1State();
}

class _Or_Lesson1State extends State<Or_Lesson1> {
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
              Padding(padding: EdgeInsets.all(20),child: OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(fixedSize: const Size(250, 80),side: BorderSide(width: 5.0, color: Colors.white),), child: Text("ONE(1)",style:TextStyle(fontSize: 50),)),),
              Padding(padding: EdgeInsets.all(20),child: OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(fixedSize: const Size(250, 80),side: BorderSide(width: 5.0, color: Colors.white),), child: Text("ZERO(0)",style:TextStyle(fontSize: 50))),)
            ],),
          ],)
        ],
      ),
    );
  }
}
