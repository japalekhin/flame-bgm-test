import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flame BGM Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flame BGM Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    // setState(() {
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Play Track 1'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('Play Track 2'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('Play Track 3'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('Stop'),
              onPressed: () {},
            ),
            SizedBox(height: 32),
            RaisedButton(
              child: Text('Pause'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('Resume'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
