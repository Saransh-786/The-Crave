import 'package:email_password_login/Chinese_Recipe/C1.dart';
import 'package:email_password_login/Chinese_Recipe/C2.dart';
import 'package:email_password_login/Chinese_Recipe/C3.dart';
import 'package:email_password_login/Chinese_Recipe/C4.dart';
import 'package:email_password_login/Chinese_Recipe/C5.dart';
import 'package:email_password_login/Chinese_Recipe/C6.dart';
import 'package:email_password_login/Chinese_Recipe/C7.dart';
import 'package:email_password_login/Chinese_Recipe/C8.dart';
import 'package:flutter/material.dart';

import 'Menu.dart';

class Chinese extends StatelessWidget {
  const Chinese({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, new MaterialPageRoute(builder: (context) => Menu()));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Center(
            child: Text(
              'Explore Chinese',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Gesture(),
                    Gesture_1(),
                    Gesture_2(),
                    Gesture7(),
                    Gesture_3(),
                    Gesture4(),
                    Gesture5(),
                    Gesture6(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Gesture extends StatefulWidget {
  const Gesture({Key? key}) : super(key: key);

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C1()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ndtvimg.com/i/2015-10/dimsum_625x350_51446202982.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dim Sums",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'Dimsums are perfect steamed snack \n'
                        'To delight those evening cravings.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 135                    716 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '4.6',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture_1 extends StatefulWidget {
  const Gesture_1({Key? key}) : super(key: key);

  @override
  State<Gesture_1> createState() => _Gesture_1State();
}

class _Gesture_1State extends State<Gesture_1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C2()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ndtvimg.com/i/2016-06/soup-625_625x350_81466064298.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hot And Sour Soup",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        ' A piping hot bowl of hot and sour soup \n'
                        'On a wintery evening is all you need.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'Soup PLATE      RS 96                     516 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '4.8',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture_2 extends StatefulWidget {
  const Gesture_2({Key? key}) : super(key: key);

  @override
  State<Gesture_2> createState() => _Gesture_2State();
}

class _Gesture_2State extends State<Gesture_2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C3()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1607328874071-45a9cd600644?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quick Noddles",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'Just bung in all your favourite veggies\n'
                        ' And create a masterpiece of your own.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 120                     316 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '4.3',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture_3 extends StatefulWidget {
  const Gesture_3({Key? key}) : super(key: key);

  @override
  State<Gesture_3> createState() => _Gesture_3State();
}

class _Gesture_3State extends State<Gesture_3> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C4()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ndtvimg.com/i/2016-06/tofu-with-rice_625x350_81466070125.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Stir Fried Tofu with Rice",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'An easy,vegetarian, Chinese style recipe laden with spices.',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 180                     106 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '3.8',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture4 extends StatefulWidget {
  const Gesture4({Key? key}) : super(key: key);

  @override
  State<Gesture4> createState() => _Gesture4State();
}

class _Gesture4State extends State<Gesture4> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C5()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ndtvimg.com/i/2016-06/dhaniwal-chicken_625x350_71464783643.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Chicken with Chestnuts",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text('This earthy recipe is perfect for a holiday feast.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 250                     563 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '4.8',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture5 extends StatefulWidget {
  const Gesture5({Key? key}) : super(key: key);

  @override
  State<Gesture5> createState() => _Gesture5State();
}

class _Gesture5State extends State<Gesture5> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C6()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ndtvimg.com/i/2018-01/honey-chilli-potato_620x330_81514872067.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Honey Chilli Potato",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'It has perfect balance of sweet & spicy \n'
                        'with sliced potatoes and spices.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 140                     1102 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '5.0',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture6 extends StatefulWidget {
  const Gesture6({Key? key}) : super(key: key);

  @override
  State<Gesture6> createState() => _Gesture6State();
}

class _Gesture6State extends State<Gesture6> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C7()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.ndtvimg.com/i/2016-06/veggies_625x350_71466071339.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wok Tossed Honey Black Bean Glaze",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'A colourful melange of veggies \n'
                        'All tossed in honey and black bean sauce.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS  360                    204 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '2.9',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}

class Gesture7 extends StatefulWidget {
  const Gesture7({Key? key}) : super(key: key);

  @override
  State<Gesture7> createState() => _Gesture7State();
}

class _Gesture7State extends State<Gesture7> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => C8()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://c.ndtvimg.com/2018-09/i9993f38_noodles_625x300_26_September_18.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Veg Hakka Noodles",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        ' A delicious Chinese recipe to prepare for a fun dinner for kids.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 120                     822 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '4.6',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
