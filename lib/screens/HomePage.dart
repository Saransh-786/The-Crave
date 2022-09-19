import 'package:email_password_login/screens/Beveragepage.dart';
import 'package:email_password_login/screens/Biryani.dart';
import 'package:email_password_login/screens/Burger.dart';
import 'package:email_password_login/screens/Dessert.dart';
import 'package:email_password_login/screens/Maincourse.dart';
import 'package:email_password_login/screens/MaincourseNon.dart';
import 'package:email_password_login/screens/Menu.dart';
import 'package:email_password_login/screens/Special.dart';
import 'package:email_password_login/screens/Starter.dart';
import 'package:email_password_login/screens/chinese.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_password_login/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'The Crave~',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 39, 42, 38),
                  fontSize: 25),
            ),
            iconTheme: IconThemeData(color: Colors.redAccent),
            // centerTitle: true,
            backgroundColor: Colors.white),
        drawer: Drawer(
          child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: ListView(children: [
                DrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 23, 17, 128)),
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "${loggedInUser.firstName} ${loggedInUser.secondName}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                      Text("${loggedInUser.email}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      ActionChip(
                          label: Text("Logout"),
                          onPressed: () {
                            logout(context);
                          }),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.food_bank,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Menu',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Menu()));
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                ListTile(
                  leading: const Icon(
                    Icons.wallet,
                    color: Colors.black,
                  ),
                  title: const Text('Wallet',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (BuildContext context) => Wallet()));
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                ListTile(
                  leading: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  title: const Text('My Favourites',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {},
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                ListTile(
                  leading: const Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                  title: const Text('Rate us',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {},
                ),
                // Padding(padding: EdgeInsets.all(10.0)),

                Padding(padding: EdgeInsets.all(10.0)),
                ListTile(
                  leading: const Icon(
                    Icons.contact_support_sharp,
                    color: Colors.black,
                  ),
                  title: const Text('Contact us',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {},
                ),
              ])),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Radio(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: 1,
                                groupValue: 1,
                                onChanged: (_) {},
                                fillColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.disabled)) {
                                    return Colors.blue.withOpacity(.32);
                                  }
                                  return Colors.blue;
                                })
                                // fillColor: Colors.amber,
                                ),
                            Text(
                              'DineIN',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: 0,
                              groupValue: null,
                              onChanged: null,
                            ),
                            Text('Dilevery',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.height - 185.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        bannerlist("assets/restro1.jpg"),
                        bannerlist("assets/restro2.jpg"),
                        bannerlist("assets/restro4.jpg"),
                        bannerlist("assets/restro5.jpeg"),
                        // bannerlist("assets/restro7.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Explore Menu",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: InkWell(
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
                                          'https://as2.ftcdn.net/v2/jpg/02/88/64/51/1000_F_288645160_cQyKc2BUuQ28JdBGv5QtJEbz4f7Su41M.jpg'),
                                      height: 80.0,
                                      width: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Beverages',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[399]),
                                    ),
                                    // SizedBox(
                                    //   height: 6.0,
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Container(
                              child: InkWell(
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
                                          'https://as2.ftcdn.net/v2/jpg/02/84/46/89/1000_F_284468915_dI8dkbkGU2kIoRGK0KSn95UCq3oTbSy4.jpg'),
                                      height: 80.0,
                                      width: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Veg',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[399]),
                                    ),
                                    // SizedBox(
                                    //   height: 6.0,
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Nonveg()));
                                  },
                                  child: Column(
                                    children: [
                                      Ink.image(
                                        image: NetworkImage(
                                            'https://as2.ftcdn.net/v2/jpg/04/11/24/63/1000_F_411246323_DJ9Mx2mSsf91MEXSFFLxqIy0a7oHFEAJ.jpg'),
                                        height: 80.0,
                                        width: 80.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 6.0),
                                      Text(
                                        'Non Veg',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink[399]),
                                      ),
                                      // SizedBox(
                                      //   height: 6.0,
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: InkWell(
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
                                          'https://as1.ftcdn.net/v2/jpg/02/98/72/04/1000_F_298720449_Np2Sqbv4gGDbZPwdTg1dIEKvUQ7Quh18.jpg'),
                                      height: 80.0,
                                      width: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Chinese',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[399]),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Container(
                              child: InkWell(
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
                                          'https://as1.ftcdn.net/v2/jpg/03/53/68/46/1000_F_353684631_VKQBWtFDwMgoyGhphv9WBNNqNAdLPpNk.jpg'),
                                      height: 80.0,
                                      width: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Fast Food',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[399]),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: InkWell(
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
                                            'https://as1.ftcdn.net/v2/jpg/02/45/45/62/1000_F_245456223_CrK1J9ePGfc1UW2QncGmFfycpI3vFnxI.jpg'),
                                        height: 80.0,
                                        width: 80.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 6.0),
                                      Text(
                                        'Dessert',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink[399]),
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.height - 185.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        discountbanner("assets/discount1.jpg"),
                        discountbanner("assets/discount5.png"),
                        discountbanner("assets/discount2.jpg"),
                        // discountbanner("assets/discount3.jpeg"),
                        discountbanner("assets/discount4.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: const Align(
                              alignment: Alignment.centerRight,
                              child: Text("Best Ever",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Burger()));
                                },
                                child: Column(
                                  children: [
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://as1.ftcdn.net/v2/jpg/03/69/56/94/1000_F_369569410_SSYdPZKV2Hy3WNLhwL9pRMC3S8z6gNaz.jpg'),
                                      height: 80.0,
                                      width: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Burger & Fries',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[399]),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Special()));
                                },
                                child: Column(
                                  children: [
                                    Ink.image(
                                      image: NetworkImage(
                                          'https://as2.ftcdn.net/v2/jpg/02/75/39/13/1000_F_275391367_Hro3Ql1iFsCNtd86zWYuqa0Qe5cc7goE.jpg'),
                                      height: 80.0,
                                      width: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      'Special Thali',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink[399]),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: InkWell(
                                  // borderRadius: BorderRadius.circular(20),
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Biryani()));
                                  },
                                  child: Column(
                                    children: [
                                      Ink.image(
                                        image: NetworkImage(
                                            'https://as2.ftcdn.net/v2/jpg/04/36/36/57/1000_F_436365754_z3i5Es0sFmZuLY6GZIzdiU01v9HqpGZe.jpg'),
                                        height: 80.0,
                                        width: 80.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 6.0),
                                      Text(
                                        'Briyani',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pink[399]),
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}

Widget bannerlist(String impath) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Image.asset(
      impath,
      fit: BoxFit.fill,
    ),
  );
}

Widget discountbanner(String impath) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Image.asset(
      impath,
      fit: BoxFit.fill,
    ),
  );
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
}
