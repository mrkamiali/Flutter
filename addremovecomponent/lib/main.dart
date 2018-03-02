import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "MY APP",
      theme: new ThemeData(
          primarySwatch: Colors.lightGreen
      ),
      home: new SamplePageApp(),
    );
  }
}

class SamplePageApp extends StatefulWidget {

  @override
  _SampleAppPage createState() => new _SampleAppPage();
}

class _SampleAppPage extends State<SamplePageApp> {
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return new Text('Toggle one');
    } else {
      return new MaterialButton(
        onPressed: () {}, child: new Text('Toggle Two'),);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _toggle,
        child: new Icon(Icons.update),
      ),
    );
  }

}

