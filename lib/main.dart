import 'package:flutter/material.dart';
import 'calculator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Calculator')),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Calculator(),
      ),
    );
  }
}
