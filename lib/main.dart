import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('8 ball Decision'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: HomePage(),
        ),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Ask your Question and click the ball for decision.',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
          FlatButton(
            onPressed: () {
              changeBall();
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            ),
          )
        ],
      ),
    );
  }

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('ballnumber = $ballNumber');
    });
  }
}
