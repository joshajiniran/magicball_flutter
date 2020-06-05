import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });

                print('I got clicked');
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              hoverElevation: 8.0,
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.blur_circular),
                  applicationVersion: '1.0.0',
                );
              },
              padding: EdgeInsets.all(20.0),
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue.shade800,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
