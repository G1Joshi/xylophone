import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Tile(color: Colors.red, number: 1),
            Tile(color: Colors.orange, number: 2),
            Tile(color: Colors.yellow, number: 3),
            Tile(color: Colors.green, number: 4),
            Tile(color: Colors.blue, number: 5),
            Tile(color: Colors.indigo, number: 6),
            Tile(color: Colors.purple, number: 7),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  Tile({required this.color, required this.number});

  final Color color;
  final int number;

  void play(int number) => AudioCache().play('note$number.wav');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => play(number),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
