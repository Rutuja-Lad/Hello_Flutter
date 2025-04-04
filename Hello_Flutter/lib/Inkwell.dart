import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inkwell extends StatelessWidget {
  const Inkwell({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('InkWell Widget'),
        ),
        body: Center(
          child: InkWell(
            onDoubleTap: () {
              print("Double Tap");
            },
            onTap: () {
              print("OnTap");
            },
            onLongPress: () {
              print("Long pressed");
            },
            child: Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              transform: Matrix4.rotationY(0.2),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Column(
                children: [
                  Text(
                    "Click",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      print("Text Clicked");
                    },
                    child: Text(
                      "Clickable Text",
                      style: TextStyle(fontSize: 20, color: Colors.amberAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
