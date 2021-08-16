import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Hello Guys'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
        child: Image(
          image: NetworkImage(
              'Images/6.jpg'),
        ),
        ),
      ),
    ),
  );
}