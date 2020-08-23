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
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(map[x]),
              ),
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;

      for (int x = 0; x < bakeryProducts.length; x++) {
        dropdownButtons.add(dropDownButton());
      }
    });
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
        icon: Icon(
          Icons.arrow_downward,
          color: Colors.white,
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.teal[900], fontFamily: 'Montserrat'),
        underline: Container(
          height: 2,
          color: Colors.white,
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
      backgroundColor: Colors.lightBlue,
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

class ShowGroceryList extends StatefulWidget {
  final String title;
  ShowGroceryList(this.title) : assert(title != null);
  @override
  _ShowGroceryListState createState() => _ShowGroceryListState(title);
}

class _ShowGroceryListState extends State<ShowGroceryList> {
  final String title;
  _ShowGroceryListState(this.title) : assert(title != null);
  List<Widget> items = [];
  List<Widget> tempData = [];
  bool gotten = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/view-cart-items@dev/?list=$title'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            child: Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(map[x]),
                ),
                color: Colors.teal,
              ),
            ),
            width: double.infinity,
          ),
        ),
      );
    }
    setState(() {
      items = tempData;
    });
  }

  _openDetailsPage(BuildContext context, String category) {
    print(category);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ShowGroceryList(category)));
  }

  Widget productButton(BuildContext context, String title) {
    return Expanded(
      child: Container(
        child: RaisedButton(
          onPressed: () => _openDetailsPage(context, title),
          child: Container(
            width: 200,
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!gotten) {
      fetchProducts();
      gotten = true;
    }
    return Scaffold(
      appBar: topAppBar('Your items in list: $title'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                        'Below are the items in your grocery list. These are two route options you can choose from'),
                  ),
                  color: Colors.grey,
                ),
              ),
              width: double.infinity,
            ),
          ),
          productButton(context, 'Fuel Efficient Route'),
          productButton(context, 'Cost Efficient Route'),
          productButton(context, 'One Stop Route'),
          Divider(
            color: Colors.blue,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('2% Milk'),
                  ),
                  color: Colors.teal,
                ),
              ),
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Everything Bagel'),
                  ),
                  color: Colors.teal,
                ),
              ),
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Bananas'),
                  ),
                  color: Colors.teal,
                ),
              ),
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Oranges'),
                  ),
                  color: Colors.teal,
                ),
              ),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
