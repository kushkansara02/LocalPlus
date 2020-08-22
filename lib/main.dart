import 'package:flutter/material.dart';
import './pages.dart';

void main() {
  runApp(
    MyApp(),
  );
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  int b_width = 200;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getWidget(int index) {
    switch (index) {
      case 0:
        {
          return HomePage();
        }
        break;

      case 1:
        {
          return SearchPage();
        }
        break;

      case 2:
        {
          return CartPage();
        }
        break;

      case 3:
        {
          return RoutePage();
        }
        break;

      case 4:
        {
          return SettingsPage();
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: topAppBar(),
      body: Center(
        child: getWidget(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal.shade200,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            title: Text('Routes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: onItemTapped,
      ),
    );
  }
}

Widget topAppBar() {
  return AppBar(
    backgroundColor: Colors.teal.shade900,
    title: Text(
      'POGGERS NAME',
      style: TextStyle(fontFamily: 'Montserrat', color: Colors.teal.shade50),
    ),
  );
}
