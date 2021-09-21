import 'package:flutter/material.dart';

void main() {
  //URL取得
  String myurl = Uri.base.toString();
  //クエリパラメータ取得
  String? id = Uri.base.queryParameters["id"];

  runApp(MyApp(myurl: myurl, id: id ?? 'null'));
}

class MyApp extends StatefulWidget {
  String? myurl, id;
  MyApp({this.myurl, this.id});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter webページだよ"),
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  //display parameters and URL here
                  Text(
                      widget.id == null ? "id is null" : "id  = " + widget.id!),
                  Text(widget.myurl == null
                      ? "URl is null"
                      : "URLパラメータ = " + widget.myurl!)
                ],
              ))),
    );
  }
}
