import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
            title: Text(
              'Hide & Seek',
              style: TextStyle(
                fontFamily: 'DancingScript',
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[600]),
        body: PlayGround(),
      ),
    );
  }
}

class PlayGround extends StatefulWidget {
  const PlayGround({Key? key}) : super(key: key);

  @override
  _PlayGroundState createState() => _PlayGroundState();
}

class _PlayGroundState extends State<PlayGround> {
  var mScore = 0;
  var rand;
  var point1 = 'surface.png',
      point2 = 'surface.png',
      point3 = 'surface.png',
      point4 = 'surface.png',
      point5 = 'surface.png',
      point6 = 'surface.png',
      point7 = 'surface.png',
      point8 = 'surface.png',
      point9 = 'surface.png';
  var flag = true;
  late Timer timer;

  void startGame() {
    changeHoleFace();
    flag = false;
  }

  void incrementScore() {
    setState(() {
      mScore++;
    });
  }

  void serDefaultFace(var randPoint) {
    timer = new Timer(new Duration(milliseconds: 500), () {
      setState(() {
        switch (randPoint) {
          case 1:
            {
              point1 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 2:
            {
              point2 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 3:
            {
              point3 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 4:
            {
              point4 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 5:
            {
              point5 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 6:
            {
              point6 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 7:
            {
              point7 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 8:
            {
              point8 = 'surface.png';
              changeHoleFace();
            }
            break;

          case 9:
            {
              point9 = 'surface.png';
              changeHoleFace();
            }
            break;
        }
      });
    });
  }

  void changeHoleFace() {
    setState(() {
      rand = Random().nextInt(9) + 1;
      print(rand);
      switch (rand) {
        case 1:
          {
            point1 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 2:
          {
            point2 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 3:
          {
            point3 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;
        case 4:
          {
            point4 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 5:
          {
            point5 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 6:
          {
            point6 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 7:
          {
            point7 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 8:
          {
            point8 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;

        case 9:
          {
            point9 = 'sq2.jpeg';
            serDefaultFace(rand);
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          Row(
            //ROW 0
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Score : $mScore',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //ROW 1
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 1) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point1'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 2) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point2'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 3) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point3'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //ROW 2
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 4) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point4'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 5) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point5'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 6) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point6'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //ROW 2
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 7) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point7'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 8) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point8'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (rand == 9) {
                      incrementScore();
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/$point9'),
                  ),
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text('Start'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.teal,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  print('pressed start');
                  if (flag)
                    startGame();
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Already started!!!"),
                    ));
                    // Fluttertoast.showToast(
                    //     msg: "Already started",
                    //     textColor: Colors.white,
                    //     toastLength: Toast.LENGTH_SHORT,
                    //     gravity: ToastGravity.BOTTOM,
                    //     timeInSecForIosWeb: 1);
                  }
                },
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text('Stop'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.teal,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  if (timer.isActive) {
                    timer.cancel();
                    flag = true;
                    mScore = 0;
                  }
                },
              ),
            )),
          ]),
        ]));
  }
}
