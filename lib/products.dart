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
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Bakery'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              onPressed: () {},
              child: Text(map[x]),
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Bakery Products'),
    );
  }
}

class DairyProducts extends StatefulWidget {
  @override
  _DairyProductsState createState() => _DairyProductsState();
}

class _DairyProductsState extends State<DairyProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Dairy'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              onPressed: () {},
              child: Text(map[x]),
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Dairy Products'),
    );
  }
}

class DrinksProducts extends StatefulWidget {
  @override
  _DrinksProductsState createState() => _DrinksProductsState();
}

class _DrinksProductsState extends State<DrinksProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Drinks'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              onPressed: () {},
              child: Text(map[x]),
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Drinks'),
    );
  }
}

class EggsProducts extends StatefulWidget {
  @override
  _EggsProductsState createState() => _EggsProductsState();
}

class _EggsProductsState extends State<EggsProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Eggs'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              onPressed: () {},
              child: Text(map[x]),
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Eggs'),
    );
  }
}

class FruitsProducts extends StatefulWidget {
  @override
  _FruitsProductsState createState() => _FruitsProductsState();
}

class _FruitsProductsState extends State<FruitsProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Fruits'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              onPressed: () {},
              child: Text(map[x]),
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Fruits'),
    );
  }
}

class MeatProducts extends StatefulWidget {
  @override
  _MeatProductsState createState() => _MeatProductsState();
}

class _MeatProductsState extends State<MeatProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Meat'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              child: Text(map[x]),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Meat'),
    );
  }
}

class SeafoodProducts extends StatefulWidget {
  @override
  _SeafoodProductsState createState() => _SeafoodProductsState();
}

class _SeafoodProductsState extends State<SeafoodProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Seafood'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              child: Text(map[x]),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Seafood'),
    );
  }
}

class SnacksProducts extends StatefulWidget {
  @override
  _SnacksProductsState createState() => _SnacksProductsState();
}

class _SnacksProductsState extends State<SnacksProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Snacks'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              child: Text(map[x]),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Snacks'),
    );
  }
}

class VegetablesProducts extends StatefulWidget {
  @override
  _VegetablesProductsState createState() => _VegetablesProductsState();
}

class _VegetablesProductsState extends State<VegetablesProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type=Vegetables'));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              child: Text(map[x]),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Vegetables'),
    );
  }
}

class ShowProducts extends StatefulWidget {
  final String title;
  ShowProducts({Key key, this.title}) : super(key: key);

  @override
  _ShowProductsState createState() => _ShowProductsState();
}

class _ShowProductsState extends State<ShowProducts> {
  List<Widget> bakeryProducts = [Text('No products yet!')];
  List<Widget> tempData = [];
  bool productsDone = false;

  void fetchProducts() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(
        'https://josh-jo1.api.stdlib.com/my-willing-project@dev/?type='));
    final response = await request.close();
    final contentAsString = await utf8.decodeStream(response);
    final map = json.decode(contentAsString);
    for (int x = 0; x < map.length; x++) {
      tempData.add(
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: RaisedButton(
              child: Text(map[x]),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
        ),
      );
    }
    setState(() {
      bakeryProducts = tempData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!productsDone) {
      fetchProducts();
      productsDone = true;
    }
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: bakeryProducts,
          ),
        ),
      ),
      appBar: topAppBar('Example'),
    );
  }
}
