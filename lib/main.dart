import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

int image = 1;

int randomNumber() {
  return Random().nextInt(5) + 1;
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ball(),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.purple[900],
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            getAnswer();
          },
          child: Image.asset('images/ball$image.png')),
    );
  }

  getAnswer() {
    setState(() {
      image = randomNumber();
    });
  }
}
