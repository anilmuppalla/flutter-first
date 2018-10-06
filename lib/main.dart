import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomWordsState extends State<RandomWords> {
  Widget text = Text("Press Home for new startup name!");

  void _generateWords() {
    setState(() {
          final wordPair = new WordPair.random();
          text = Text(
            wordPair.asPascalCase,
            style: TextStyle(fontSize: 48.0),);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Startup Name Generator"),
      ), 
      body: new Center(
        child: text
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _generateWords,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      )
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new RandomWords(),
    );
  }
}
