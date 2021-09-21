import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
            title: Text('Ask Me Anything'), backgroundColor: Colors.blue),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BallPage();
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 3;
  void randomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              onPressed: () {
                randomBall();
              },
              child: Image.asset('images/ball$ballNumber.png')),
        )),
      ]),
    );
  }
}
