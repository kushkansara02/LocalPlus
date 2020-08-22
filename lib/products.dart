import 'package:flutter/material.dart';
import 'package:hack_the_6ix/main.dart';
import './pages.dart';

class BakeryProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of bakery products')),
      ),
      appBar: topAppBar(),
    );
  }
}
