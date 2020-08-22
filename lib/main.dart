import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:hack_the_6ix/products.dart';
import './pages.dart';
import 'package:custom_navigator/custom_navigator.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyStatefulWidget(),
    ),
  );
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: _items,
        ),
      ),
      children: <Widget>[
        SearchPage(),
        SearchPage(),
        SearchPage(),
        SearchPage(),
        SearchPage(),
      ],
      onItemTap: (index) {},
    );
  }

  final _items = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.black,
      ),
      title: Text(
        'Home',
        style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      title: Text(
        'Search',
        style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.black,
      ),
      title: Text(
        'Cart',
        style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.directions_car,
        color: Colors.black,
      ),
      title: Text(
        'Routes',
        style: TextStyle(color: Colors.black),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
        color: Colors.black,
      ),
      title: Text(
        'Settings',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Bakery'),
                child: Text('Bakery')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Dairy'),
                child: Text('Dairy')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Drinks'),
                child: Text('Drinks')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Eggs'),
                child: Text('Eggs')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Fruits'),
                child: Text('Fruits')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Meat'),
                child: Text('Meat')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Seafood'),
                child: Text('Seafood')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Snacks'),
                child: Text('Snacks')),
            RaisedButton(
                onPressed: () => _openDetailsPage(context, 'Vegetables'),
                child: Text('Vegetables')),
          ],
        ),
      ),
      appBar: topAppBar(),
    );
  }

  //Use the navigator like you usually do with .of(context) method
  _openDetailsPage(BuildContext context, String category) {
    switch (category) {
      case 'Bakery':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BakeryProducts()));
        }
        break;

      case 'Dairy':
        {
          //statements;
        }
        break;

      case 'Drinks':
        {
          //statements;
        }
        break;

      case 'Eggs':
        {
          //statements;
        }
        break;

      case 'Fruits':
        {
          //statements;
        }
        break;

      case 'Meat':
        {
          //statements;
        }
        break;

      case 'Seafood':
        {
          //statements;
        }
        break;

      case 'Snacks':
        {
          //statements;
        }
        break;

      case 'Vegetables':
        {
          //statements;
        }
        break;
    }
  }
}

Widget topAppBar() {
  return AppBar(
    backgroundColor: Colors.teal.shade900,
    title: Text(
      "We don't have one",
      style: TextStyle(fontFamily: 'Montserrat', color: Colors.teal.shade50),
    ),
  );
}
