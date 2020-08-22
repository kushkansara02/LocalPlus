import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:hack_the_6ix/products.dart';
import './pages.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
          backgroundColor: Colors.yellow,
          items: _items,
        ),
      ),
      children: <Widget>[
        HomePage(),
        SearchPage(),
        CartPage(),
        RoutePage(),
        SettingsPage(),
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
