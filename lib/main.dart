import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:logic_enhancer/pages/credit.dart';
import 'package:logic_enhancer/pages/option_page.dart';
import 'package:logic_enhancer/save.dart';
import 'pages/play_page (1).dart';
import 'dart:html';
import 'dart:ui' as ui;

int x = 0;
late AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
var colors = [0xFFa0b6f7, 0xFFf2f261, 0xFF4955fd, 0xFFa5e300];
int ind = int.parse(save.getvalue('color_pref'));
int over = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Digital7'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorindex = 0;
  late Timer timer;
  String name = '';
  @override
  void initState() {
    super.initState();
    //if (over == 0) {
    //WidgetsBinding.instance?.addPostFrameCallback(
    //      (_) => Overlay.of(context)?.insert(_getEntry(context)));
    //over = 1;
    //}

    if (save.localStorage['user'] != 'user') {
      save.initsave();
    }

    if (x == 0 || x == 1) {
      assetsAudioPlayer.open(Audio("assets/audio/music.mp3"));
      assetsAudioPlayer.setVolume(0.2);
      assetsAudioPlayer.play();
      setState(() {
        x += 1;
      });
    }
    if (assetsAudioPlayer.isPlaying.value) {
      assetsAudioPlayer.setLoopMode(LoopMode.single);
    }
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        colorindex++;
        if (colorindex > 1) colorindex = 0;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => _getEntry(context));
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/background.jpg'),
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(40),
              width: double.infinity,
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'LOGIC '),
                  TextSpan(
                      text: 'E',
                      style: TextStyle(
                          color: (colorindex == 1)
                              ? Colors.white
                              : Color(colors[ind]))),
                  TextSpan(text: '-NHANCER')
                ]),
                style: TextStyle(
                  fontFamily: 'Digital7',
                  fontSize: 90.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 120.0, 20.0, 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => playPage()));
                            },
                            color: Color(colors[ind]),
                            hoverColor: Color(colors[ind + 1]),
                            padding: EdgeInsets.fromLTRB(45, 10, 90, 30),
                            child: Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 2, 10),
                                    child: Icon(
                                      Icons.play_circle_rounded,
                                      color: Colors.white,
                                      size: 60.0,
                                    )),
                                SizedBox(
                                  width: 35,
                                ),
                                Text(
                                  'play',
                                  style: TextStyle(
                                    fontFamily: 'Digital7',
                                    color: Colors.black,
                                    fontSize: 70.0,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                    SizedBox(height: 45.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OptionPage()));
                            },
                            color: Color(colors[ind]),
                            hoverColor: Color(colors[ind + 1]),
                            padding: EdgeInsets.fromLTRB(30, 10, 40, 20),
                            child: Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(5, 20, 20, 10),
                                    child: Icon(
                                      Icons.miscellaneous_services,
                                      color: Colors.white,
                                      size: 60.0,
                                    )),
                                /* SizedBox(
                                    width: 20,
                                  ), */
                                Text(
                                  'Options',
                                  style: TextStyle(
                                    fontFamily: 'Digital7',
                                    color: Colors.black,
                                    fontSize: 70.0,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                    SizedBox(height: 45.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => credits()));
                            },
                            color: Color(colors[ind]),
                            hoverColor: Color(colors[ind + 1]),
                            padding: EdgeInsets.fromLTRB(30, 10, 40, 20),
                            child: Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(5, 20, 20, 10),
                                    child: Icon(
                                      Icons.military_tech_sharp,
                                      color: Colors.white,
                                      size: 60.0,
                                    )),
                                /* SizedBox(
                                    width: 20,
                                  ), */
                                Text(
                                  'Credits',
                                  style: TextStyle(
                                    fontFamily: 'Digital7',
                                    color: Colors.black,
                                    fontSize: 70.0,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ],
                ))
          ])),
    );
  }

  OverlayEntry _getEntry(context) {
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
                            width: 300,
                            height: 300,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                                  child: Text(
                                    "ENTER YOUR NAME",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.all(50),
                                    child: TextField(
                                      decoration: const InputDecoration(
                                          hintText: 'Enter your name',
                                          fillColor: Colors.white,
                                          filled: true),
                                      onSubmitted: (String str) {
                                        setState(() {
                                          name = str;
                                          //if(name != save.localStorage['user']){
                                          //save.initsave(name);
                                          //}
                                          entry.remove();
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ));
    return entry;
  }
}
