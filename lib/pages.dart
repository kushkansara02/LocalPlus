import 'package:flutter/material.dart';
import './products.dart';
import 'dart:io';
import 'dart:convert';
import './maps.dart';

List<String> allLists = <String>[];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: topAppBar("Local+"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/logo.png',
            width: 150,
            height: 150,
          ),
          Container(
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Welcome, Hack the 6ix User!',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  double b_width = 200;
  double b_height = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Bakery'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Dairy'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Drinks'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Eggs'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Fruits'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Meat'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Seafood'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Snacks'),
              SizedBox(
                height: b_height,
              ),
              productButton(context, 'Vegetables'),
              SizedBox(
                height: b_height,
              ),
            ],
          ),
        ),
      ),
      appBar: topAppBar('Browse Products'),
    );
  }

  Widget productButton(BuildContext context, String title) {
    return Expanded(
      child: RaisedButton(
        onPressed: () => _openDetailsPage(context, title),
        child: Container(
          width: b_width,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
  }

  //Use the navigator like you usually do with .of(context) method
  _openDetailsPage(BuildContext context, String category) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ShowProducts(category)));
  }
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Widget> tempData = [];
  List<Widget> mainList = <Widget>[Text('Your data is loading')];
  bool dataGotten = false;

  final _formKey = GlobalKey<FormState>();
  TextEditingController listController = TextEditingController();

  void fetchData() async {
    final client = HttpClient();
    final request = await client.getUrl(
        Uri.parse('https://josh-jo1.api.stdlib.com/view-cart-names@dev/'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Container(
          width: 200,
          child: RaisedButton(
            child: Text(map[x]),
            onPressed: () {},
          ),
        ),
      );
      allLists.add(map[x]);
    }
    setState(() {
      if (tempData.length > 0) {
        mainList = tempData;
      } else {
        mainList[0] = Text('You have no lists currently created');
      }
    });
  }

  void compileList() {
    List<Widget> finalList = <Widget>[];
    for (int x = 0; x < allLists.length; x++) {
      finalList.add(productButton(context, allLists[x]));
    }
    setState(() {
      mainList = finalList;
    });
  }

  Widget productButton(BuildContext context, String title) {
    return Container(
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
    );
  }

  void postList(String listName) async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/cart-names@dev/?list=$listName'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
  }

  @override
  Widget build(BuildContext context) {
    if (!dataGotten) {
      fetchData();
      compileList();
      dataGotten = true;
    }
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: topAppBar('Your Grocery Lists'),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: listController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          if (allLists.length < 9) {
                            allLists.add(listController.text);
                            postList(listController.text);
                            compileList();
                          }
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: mainList,
          ),
        ],
      ),
    );
  }

  _openDetailsPage(BuildContext context, String category) {
    print(category);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ShowGroceryList(category)));
  }
}

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Routes');
  }
}

Widget topAppBar(String Title) {
  return AppBar(
    backgroundColor: Colors.teal.shade900,
    title: Text(
      Title,
      style: TextStyle(fontFamily: 'Montserrat', color: Colors.teal.shade50),
    ),
  );
}

// https://josh-jo1.api.stdlib.com/cart-items@dev/?item=Chicken&list=myList, adding product to database
// https://josh-jo1.api.stdlib.com/view-cart-items@dev/?list=myList, view items in a list
// https://josh-jo1.api.stdlib.com/cart-names@dev/?list=mylist, add list???
// https://josh-jo1.api.stdlib.com/view-cart-names@dev/, return all lists created by user
