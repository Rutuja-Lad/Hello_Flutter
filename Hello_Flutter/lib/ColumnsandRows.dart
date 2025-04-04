import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoumnsandRows extends StatelessWidget {
  const CoumnsandRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Columns Abd Rows"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("A"),
            Text("B"),
            Text("C"),
            Text("D"),
            Container(
              child: Text("D"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Click")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.indigo,
                  child: Text(
                    "A1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.indigo,
                  child: Text(
                    "A2",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
