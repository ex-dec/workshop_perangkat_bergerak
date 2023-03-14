import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WPPB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Workshop Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Percobaan
  String _text = "";

  // Latihan
  //String _text = "Saved number : ";

  // Tugas
  //String _text = "Prime number : ";

  void _incrementCounter() {
    setState(() {
      _counter++;

      //  Percobaan
      if(_counter % 2 == 0){
        _text = "Genap";
      } else {
        _text = "Ganjil";
      }

      //  Latihan
      // if(_counter % 3 == 0 && _counter % 2 == 0){
      //   _text += '${_counter} ';
      // }

      //  Tugas
      // if(_counter >= 2){
      //   int p = 0;
      //   for(int i=1; i<=_counter ; i++){
      //     if(_counter % i == 0){
      //       p++;
      //     }
      //   }
      //   if(p == 2){
      //     _text += '${_counter} ';
      //   }
      // }
    });
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_text',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
