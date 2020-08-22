import 'package:flutter/material.dart';
import './products.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Welcome, Ad00t!',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your current location is:',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You currently have X items selected in Y shopping lists',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your most recent list would take you to N stores within an M km radius',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Info (Expand)',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: RaisedButton(
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  'Fruits and Vegetables',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: RaisedButton(
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  'Dairy and Eggs',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: RaisedButton(
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  'Meat and Seafood',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BakeryProducts()));
            },
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  'Bakery',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: RaisedButton(
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  'Drinks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: RaisedButton(
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  'Snacks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Cart');
  }
}

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Routes');
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Settings');
  }
}
