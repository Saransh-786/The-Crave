import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_the_crave/homepage.dart';
// import 'Pages/menu_page.dart';
// import 'Pages/Cart_page.dart';
// import 'Pages/Recipe_page.dart';
// import 'main.dart';
import 'Cart.dart';
import 'Menu.dart';
import 'homepage.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _currentindex = 0;
  final Screen = [
    Homepage(),
    Menu(),
    // Recipe(),
    Cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[_currentindex],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade200,
              labelTextStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold))),
          child: NavigationBar(
              height: 70.0,
              backgroundColor: Colors.white70,
              selectedIndex: _currentindex,
              onDestinationSelected: (int index) => setState(() {
                    this._currentindex = index;
                  }),
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.food_bank),
                  label: 'Menu',
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_cart_checkout),
                  label: 'Cart',
                ),
              ])),
    );
  }
}
