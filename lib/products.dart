import 'package:flutter/material.dart';
import './pages.dart';
import './main.dart';
import 'dart:io';
import 'dart:convert';

class ShowProducts extends StatefulWidget {
  final String title;
  ShowProducts(this.title) : assert(title != null);
  @override
  _ShowProductsState createState() => _ShowProductsState(title);
}

class _ShowProductsState extends State<ShowProducts> {
  final String title;
  _ShowProductsState(this.title) : assert(title != null);

  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  List<Widget> dropdownButtons = [];
  bool productsDone = false;
  List<String> groceryLists = ['None'];
  String dropdownVal = 'None';

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=$title'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Card(child: Text(map[x])),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
    for (int x = 0; x < bakeryProducts.length; x++) {
      dropdownButtons.add(dropDownButton());
    }
  }

  void fetchLists() async {
    final client = HttpClient();
    final request = await client.getUrl(
        Uri.parse('https://josh-jo1.api.stdlib.com/view-cart-names@dev/'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);

    for (int x = 0; x < map.length; x++) {
      groceryLists.add(map[x]);
    }
  }

  Widget dropDownButton() {
    return Expanded(
      child: DropdownButton<String>(
        value: dropdownVal,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.teal, fontFamily: 'Montserrat'),
        underline: Container(
          height: 2,
          color: Colors.teal,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownVal = newValue; // not changed in build method
          });
        },
        items: groceryLists.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchLists();
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topAppBar(title),
      body: Row(
        children: [
          Column(
            children: bakeryProducts,
          ),
          Column(
            children: dropdownButtons,
          ),
        ],
      ),
    );
  }
}
