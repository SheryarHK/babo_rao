import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade100,
        title: Text(
          'Han pooch meray se!',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Pooch(),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          'Dil me sawal kar',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        color: Colors.yellow.shade100,
      ),
    ),
  ));
}

class Pooch extends StatefulWidget {
  @override
  _PoochState createState() => _PoochState();
}

class _PoochState extends State<Pooch> {
  int Imagess = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              Imagess = Random().nextInt(3) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/babo$Imagess.jpg'),
          ),
        ),
      ),
    );
  }
}
