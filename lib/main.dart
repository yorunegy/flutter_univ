import 'package:flutter/material.dart';
import 'package:flutter_univ/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Youtube的アプリ',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Youtube風アプリ'),
          ),
          body: Container()),
    );
  }
}
