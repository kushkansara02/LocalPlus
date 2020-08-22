import 'package:flutter/material.dart';
import './products.dart';
import './main.dart';

List<String> allLists = <String>[];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: topAppBar("We don't have one"),
      body: Column(
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
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
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
      backgroundColor: Colors.yellow[100],
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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
          ),
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
    switch (category) {
      case 'Bakery':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BakeryProducts()));
        }
        break;

      case 'Dairy':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DairyProducts()));
        }
        break;

      case 'Drinks':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DrinksProducts()));
        }
        break;

      case 'Eggs':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EggsProducts()));
        }
        break;

      case 'Fruits':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FruitsProducts()));
        }
        break;

      case 'Meat':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MeatProducts()));
        }
        break;

      case 'Seafood':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SeafoodProducts()));
        }
        break;

      case 'Snacks':
        {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SnacksProducts()));
        }
        break;

      case 'Vegetables':
        {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => VegetablesProducts()));
        }
        break;
    }
  }
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Widget> mainList = <Widget>[Text('Submit a list to see your lists!')];
  final _formKey = GlobalKey<FormState>();
  TextEditingController listController = TextEditingController();

  void compileList() {
    List<Widget> finalList = <Widget>[];
    for (int x = 0; x < allLists.length; x++) {
      finalList.add(Container(
        width: 200,
        child: RaisedButton(
          child: Text(allLists[x]),
          onPressed: () {},
        ),
      ));
    }
    setState(() {
      mainList = finalList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

Widget topAppBar(String Title) {
  return AppBar(
    backgroundColor: Colors.teal.shade900,
    title: Text(
      Title,
      style: TextStyle(fontFamily: 'Montserrat', color: Colors.teal.shade50),
    ),
  );
}
