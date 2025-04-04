import 'package:flutter/material.dart';
import 'package:helloworld/Container.dart';
import 'package:helloworld/Buttons.dart';
import 'package:helloworld/ColumnsandRows.dart';
import 'package:helloworld/Inkwell.dart';
import 'package:helloworld/listView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Hello Flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          backgroundColor: Colors.black,
          title: Text(title,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContainerPage()),
                    );
                  },
                  child: Text('See container widget'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonWidget()));
                    },
                    child: Text(
                      "Bottons",
                    )),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoumnsandRows()));
                    },
                    child: Text(
                      "Columns and Rows",
                    )),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Inkwell()));
                    },
                    child: Text(
                      "InkWell",
                    )),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListViewWidget()));
                    },
                    child: Text(
                      "ListView Widget",
                    ))
              ]),
        ));
  }
}
