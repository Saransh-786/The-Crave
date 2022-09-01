import 'package:email_password_login/Maincourse_nonveg/MN2.dart';
import 'package:email_password_login/Maincourse_nonveg/MN3.dart';
import 'package:email_password_login/Maincourse_nonveg/MN4.dart';
import 'package:email_password_login/Maincourse_nonveg/MN5.dart';
import 'package:email_password_login/Maincourse_nonveg/MN6.dart';
import 'package:email_password_login/Maincourse_nonveg/MN7.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_application_the_crave/Pages/MainCourse_Recipe.dart';
// import 'package:flutter_application_the_crave/Pages/Maincourse.dart';
// import 'menu_page.dart';
import 'Maincourse.dart';

class Nonveg extends StatelessWidget {
  const Nonveg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, new MaterialPageRoute(builder: (context) => MainCourse()));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            'Enjoy :) Chinese',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    'Veg',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            MainCourse()));
                              },
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                color: Color.fromARGB(197, 187, 32, 32),
                                child: Center(
                                  child: Text(
                                    'Non Veg',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onTap: () {
                                // Navigator.of(context).pushReplacement(
                                // MaterialPageRoute(
                                // builder: (BuildContext context) =>
                                //     Maincourse_Recipe()));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Gesture(),
                          Gesture_1(),
                          Gesture_2(),
                          // Gesture7(),
                          Gesture_3(),
                          Gesture4(),
                          Gesture5(),
                          // Gesture6(),
                        ],
                      ),
                    ],
                  )),
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
            MaterialPageRoute(builder: (BuildContext context) => MN6()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.whiskaffair.com/wp-content/uploads/2020/04/Kadai-Chicken-1.jpg'),
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
                      "Khadai Chicken",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'The dish is prepared in a karahi,\n'
                        ' a type of wok often used in South Asian cooking. ',
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 345                    7716 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MN2()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.indianrecipeinfo.com/wp-content/uploads/2021/12/Chicken-Handi-Recipe.jpg'),
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
                      "Handi Chicken",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'Handi chicken is a delicious dish\n'
                        ' made with chicken cooked on a low flame',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'Half Plate      RS 320                     516 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MN3()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.simplyrecipes.com/thmb/8-J-b01HNXJ0huHmlzgqqefVyGQ=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2019__01__Butter-Chicken-LEAD-5-de97119a16124a31a3b99ee16a398612.jpg'),
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
                      "Butter Chicken",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'marinated chicken that first grilled\n'
                        ' And then served in a rich gravy',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 420                     3416 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MN4()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.flourandspiceblog.com/wp-content/uploads/2020/05/Mutton-Handi-1-1152x1536.jpg'),
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
                      "Mutton Handi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'famous Champaran Meat/Mutton that cooked in a Handi..',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 540                     9656 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MN5()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://theflavoursofkitchen.com/wp-content/uploads/2015/03/kolhapuri-mutton-curry-recipe.1024x1024.jpg'),
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
                      "Kolhapuri mutton ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text('Famous  local Maharastrian Kolhapuri Mutton',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 550                   5563 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MN7()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.thespruceeats.com/thmb/zTbYQcoyvlYMEwhheXpNdCf4BZY=/940x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fish-and-chip-183870067-588668713df78c2ccddda2dd.jpg'),
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
                      "Amritsari Fish ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'great appetizer or side dish to complement the main course..',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 340                     1102 REVIEWS',
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
