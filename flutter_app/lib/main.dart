import 'package:flutter/material.dart';

void main() {
  runApp(new SampleApp());
}

class SampleApp extends StatelessWidget {


  //Apply Padding to any View
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Sample App"),
        ),
        body: new Center(
          child: new MaterialButton(
            onPressed: () {},
            child: new Text("Hello"),
            padding: new EdgeInsets.only(left: 100.0, right: 10.0),
          ),
        ),
      ),
    );
  }


//Text View in the center of the app and behaviour changes on floating click
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      //Selects the COlor of theme of the App
//      theme: new ThemeData(
//          primarySwatch: Colors.lightGreen
//      ),
//      home: new SamplePageApp(),
//    );


//Return a Simple App with textView in Center
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("My APp Title"),
//          centerTitle: true,
//        ),
//        body: new Text("Kamran"),
//      ),
//    );
//  }
}

class SamplePageApp extends StatefulWidget {

  @override
  _SamplePageApp createState() => new _SamplePageApp();
}

class _SamplePageApp extends State<SamplePageApp> {

  String textToChange = "I Like Flutter!";

  void _updateText() {
    setState(() {
      textToChange = "I Love Flutter";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(textToChange),
      ),
      body: new Center(
        child: new Text(textToChange),
      ), floatingActionButton: new FloatingActionButton(
      onPressed: _updateText,
      tooltip: "Kamran",
      child: new Icon(Icons.update),
    ),
    );
  }
}
