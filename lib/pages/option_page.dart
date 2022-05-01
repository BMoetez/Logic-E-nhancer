import 'package:flutter/material.dart';
import 'package:logic_enhancer/main.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class OptionPage extends StatefulWidget {
  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  //AudioPlayer player = AudioPlayer();
  //AudioCache cache = AudioCache();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // player = AudioPlayer();
    // cache = AudioCache(fixedPlayer: player);
    // cache.load("music.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover)),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Material(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 40,
                        color: Colors.white,
                      )),
                  color: Color.fromRGBO(231, 218, 199, 0),
                ),
              ),
              const Text(
                "Options",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    decoration: TextDecoration.none,
                    fontFamily: 'Digital7'),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 120, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: Color(colors[ind]),
                        size: 55,
                      ),
                      const Text(
                        "Music",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 60,
                            fontFamily: 'Digital7'),
                      )
                    ],
                  )),
              RaisedButton(
                onPressed: () {
  
                },
                textColor: Colors.white,
                color: Color(colors[ind]),
                hoverColor: Color(colors[ind + 1]),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: Text(
                  "ON/OFF",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.color_lens,
                          color: Color(colors[ind]),
                          size: 55,
                        ),
                        const Text(
                          "Color Preferences : ",
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 50,
                              fontFamily: 'Digital7'),
                        )
                      ])),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    ind = 2;
                  });
                },
                hoverColor: Color(0xFFa5e300),
                child: const Text(
                  "Blue/Green",
                  style: TextStyle(
                      color: Color.fromRGBO(231, 218, 199, 1), fontSize: 40),
                ),
                color: const Color(0xFF4955fd),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        ind = 0;
                      });
                    },
                    hoverColor: Color(0xFFf2f261),
                    child: const Text(
                      "Cyan/Yellow",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 40),
                    ),
                    color: const Color(0xFFa0b6f7),
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  ))
            ],
          )),
    );
  }
}
