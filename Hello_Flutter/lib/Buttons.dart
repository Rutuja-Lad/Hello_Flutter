import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Botton Widgets")),
      body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: () {
            print("Elevales Button pressed!");
          },
          child: Text('Elevated Button Tapped!'),
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {
            print("Text Button pressed!");
          },
          child: Text('Text Button Tapped!'),
        ),
      ])),
    );
  }
}
