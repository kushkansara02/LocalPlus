import 'package:flutter/material.dart';
import 'package:hack_the_6ix/main.dart';
import './pages.dart';

class BakeryProducts extends StatefulWidget {
  @override
  _BakeryProductsState createState() => _BakeryProductsState();
}

class _BakeryProductsState extends State<BakeryProducts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: topAppBar(),
        body: Column(
          children: [
            Text('Hello'),
            Text('World'),
          ],
        ),
      ),
    );
  }
}
