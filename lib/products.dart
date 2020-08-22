import 'package:flutter/material.dart';
import 'package:hack_the_6ix/main.dart';
import './pages.dart';
import 'dart:io';
import 'dart:convert';

class BakeryProducts extends StatefulWidget {
  @override
  _BakeryProductsState createState() => _BakeryProductsState();
}

class _BakeryProductsState extends State<BakeryProducts> {
  List<Widget> bakeryProducts;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Bakery'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
//    setState(() {
//      tempData = map;
//    });
    print(map);
  }

  @override
  Widget build(BuildContext context) {
    fetchProducts();
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [],
          ),
        ),
      ),
      appBar: topAppBar('Bakery Products'),
    );
  }
}

class DairyProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of dairy products')),
      ),
      appBar: topAppBar('Dairy Products'),
    );
  }
}

class DrinksProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of drinks products')),
      ),
      appBar: topAppBar('Drinks'),
    );
  }
}

class EggsProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of eggs products')),
      ),
      appBar: topAppBar('Eggs'),
    );
  }
}

class FruitsProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of fruits products')),
      ),
      appBar: topAppBar('Fruits'),
    );
  }
}

class MeatProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of meat products')),
      ),
      appBar: topAppBar('Meat'),
    );
  }
}

class SeafoodProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of seafood products')),
      ),
      appBar: topAppBar('Seafood'),
    );
  }
}

class SnacksProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of snacks products')),
      ),
      appBar: topAppBar('Snacks'),
    );
  }
}

class VegetablesProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('List of vegetable products')),
      ),
      appBar: topAppBar('Vegetables'),
    );
  }
}
