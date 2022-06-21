import 'package:flutter/material.dart';
import 'package:fooderlich/Card1.dart';

//new class extends Statefull widget
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Card1(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Fooderlich",
//theme.of(content) return the nearest theme in the widget tree or app's theme if wigdet tree theme is absent
              style: Theme.of(context).textTheme.headline1)),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        //to select the selector color when item is tapped
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card3'),
        ],
      ),
    );
  }
}