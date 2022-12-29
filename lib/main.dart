import 'package:flutter/material.dart';
import 'package:orugo/screens/home.dart';

void main() {
  runApp(const Display());
}

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
