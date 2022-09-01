import 'package:email_password_login/Maincourse_veg.dart/MV1.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV2.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV3.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV4.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV5.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV6.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV7.dart';
import 'package:email_password_login/Maincourse_veg.dart/MV8.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Menu.dart';
import 'MaincourseNon.dart';

class MainCourse extends StatelessWidget {
  const MainCourse({Key? key}) : super(key: key);

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
                                color: Color.fromARGB(197, 138, 57, 57),
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
                                color: Color.fromARGB(197, 255, 255, 255),
                                child: Center(
                                  child: Text(
                                    'Non Veg',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onTap: (() {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Nonveg()));
                              }),
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
                          Gesture7(),
                          Gesture_3(),
                          Gesture4(),
                          Gesture5(),
                          Gesture6(),
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
            MaterialPageRoute(builder: (BuildContext context) => MV1()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://rainbowplantlife.com/wp-content/uploads/2022/02/Gobi-Manchurian-closeup-1-of-1.jpg'),
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
                      "Gobi Manchurian",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text('one of the most delicious things you ever taste',
                        maxLines: 2,
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
            MaterialPageRoute(builder: (BuildContext context) => MV2()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.yummytummyaarthi.com/wp-content/uploads/2014/09/1-27.jpg'),
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
                      "Chilli Paneer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'Chillipaneer is Indian appetizer where crisp batter tossed in sweet.',
                        style: TextStyle(
                          fontSize: 8.0,
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
            MaterialPageRoute(builder: (BuildContext context) => MV3()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/malai-kofta-1.jpg'),
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
                      "Malai Kofta",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'Malai Kofta is a delicious dish of fried balls of potato and paneer',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 250                     316 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MV4()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/03/97/98/73/1000_F_397987329_4M4rOKawfjdwC6Gkf6o41i4wXAOwmRCh.jpg'),
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
                      " Chole Bhature",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'It is a combination of chana masala and bhatura/puri,\n'
                        ' a deep-fried bread made from maida',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 180                     1086 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MV5()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.cookwithmanali.com/wp-content/uploads/2019/04/Restaurant-Style-Dal-Makhani.jpg'),
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
                      " Dal Makhani",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'it is made with urad dal and other pulses,\n'
                        ' and includes butter and cream',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 250                     5683 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '4.5',
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
            MaterialPageRoute(builder: (BuildContext context) => MV6()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://c.ndtvimg.com/2018-10/ldnbn8mo_kadhi_625x300_25_October_18.jpg'),
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
                      "Kadi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        'The typical Punjabi kadi with besan pakodas\n'
                        'In a rich besan-yogurt gravy.',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 190                     1102 REVIEWS',
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
            MaterialPageRoute(builder: (BuildContext context) => MV7()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://c.ndtvimg.com/2020-12/2hbh46e8_paneer_625x300_21_December_20.jpg'),
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
                      "Handi Panner",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        ' A tempting dish of paneer masala is something \n'
                        ' No one can ever resist!',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS  360                    284 REVIEWS',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.pink[200],
                        )),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    '3.9',
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
            MaterialPageRoute(builder: (BuildContext context) => MV8()));
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://hebbarskitchen.com/wp-content/uploads/2017/08/kaju-masala-recipe-kaju-curry-recipe-cashew-nut-masala-curry-2-768x576.jpeg'),
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
                      "Kaju Masala",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                        ' roasted kaju’s or cashew nuts served in a spicy creamy ',
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.pink[200],
                        )),
                    SizedBox(height: 6.0),
                    Text(
                        'HALF PLATE      RS 420                     822 REVIEWS',
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

Container buildTopChip(String label, bool isActive) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.0),
    child: Chip(
      padding: EdgeInsets.all(8.0),
      label: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      backgroundColor: isActive ? Colors.orange : Colors.grey,
    ),
  );
}
