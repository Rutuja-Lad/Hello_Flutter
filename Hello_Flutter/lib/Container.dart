import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container Widget'),
        ),
        body: Center(
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
            child: Text(
              "I am Inside Container",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ));
  }
}
