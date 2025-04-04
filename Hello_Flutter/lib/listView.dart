import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ["Rutuja", "Pooja", "Darshana", "Shrusti", "Pragati"];
    return Scaffold(
        appBar: AppBar(title: Text("ListView Widgets")),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                arrNames[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 100,
                thickness: 2,
              );
            },
            itemCount: arrNames.length));
  }
}
