import 'package:flame/flame.dart';
import 'package:flutter/material.dart';

void main() async {
  await Flame.bgm.loadAll(<String>[
    'adventure.m4a',
    'spaceship.m4a',
    'techno.m4a',
  ]);

  runApp(MyApp());

  Flame.bgm.initialize();
}

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
              onPressed: () {
                Flame.bgm.play('techno.m4a');
              },
            ),
            RaisedButton(
              child: Text('Play Track 2'),
              onPressed: () {
                Flame.bgm.play('adventure.m4a');
              },
            ),
            RaisedButton(
              child: Text('Play Track 3'),
              onPressed: () {
                Flame.bgm.play('spaceship.m4a');
              },
            ),
            RaisedButton(
              child: Text('Stop'),
              onPressed: () => Flame.bgm.stop(),
            ),
            SizedBox(height: 32),
            RaisedButton(
              child: Text('Pause'),
              onPressed: () => Flame.bgm.pause(),
            ),
            RaisedButton(
              child: Text('Resume'),
              onPressed: () => Flame.bgm.resume(),
            ),
          ],
        ),
      ),
    );
  }
}
