import 'package:flutter/material.dart';
import 'Dessert.dart';
import 'Bottombar.dart';
import 'Starter.dart';
import 'chinese.dart';
import 'Beveragepage.dart';
import 'Maincourse.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, new MaterialPageRoute(builder: (context) => Bottombar()));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                setstate() {}
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          title: Text(
            ' Explore Menu',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey[850],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 8.0,
                ),
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          child: InkWell(
                            // borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Beverage()));
                            },

                            child: Column(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1257&q=80'),
                                  height: 180.0,
                                  width: 380.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Beverages',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text(
                                  ' "Life is Brewtiful so Lets Drink" ',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.green[600]),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //   decoration: new BoxDecoration(
                      //     color: Colors.white,
                      //     boxShadow: [
                      //       new BoxShadow(
                      //         color: Colors.grey,
                      //         blurRadius: 2.0,
                      //         spreadRadius: 1.0,
                      //       ),
                      //     ],
                      //   ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          child: InkWell(
                            // borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Starter()));
                            },
                            child: Column(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1621852003709-763b0b32da0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                  height: 187.0,
                                  width: 380.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Starters',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text(
                                  '"Its just the beginning"',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.green[600]),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // decoration: new BoxDecoration(
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     new BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 1.0,
                      //     ),
                      //   ],
                      // ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          child: InkWell(
                            // borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MainCourse()));
                            },
                            child: Column(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80'),
                                  height: 200.0,
                                  width: 380.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Main Course',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text(
                                  ' "There is no love sincerer than the love of food" ',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.green[600]),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // decoration: new BoxDecoration(
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     new BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 1.0,
                      //     ),
                      //   ],
                      // ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          child: InkWell(
                            // borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Chinese()));
                            },
                            child: Column(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1585032226651-759b368d7246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=992&q=80'),
                                  height: 200.0,
                                  width: 380.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Chinese',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text(
                                  ' "Keep Calm And Eat Chinese food :-)" ',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.green[600]),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // decoration: new BoxDecoration(
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     new BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 1.0,
                      //     ),
                      //   ],
                      // ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          child: InkWell(
                            // borderRadius: BorderRadius.circular(20.0),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Dessert()));
                            },
                            child: Column(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1492683513054-55277abccd99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                  height: 200.0,
                                  width: 380.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Dessert',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text(
                                  ' "A party without cake is just a meeting" ',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.green[600]),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // decoration: new BoxDecoration(
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     new BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 1.0,
                      //     ),
                      //   ],
                      // ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
