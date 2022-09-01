import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_password_login/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      drawer: Drawer(
        child: Container(
            color: Colors.white,
            child: ListView(children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                child: Column(
                  children: [
                    Text(
                      "Welcome Back",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        )),
                    Text("${loggedInUser.email}",
                        style: TextStyle(
                          color: Colors.black54,
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
                leading: const Icon(Icons.menu),
                title: const Text('Menu'),
                // onTap: () {
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                //       builder: (BuildContext context) => Menu()));
                // },
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ListTile(
                leading: const Icon(Icons.wallet),
                title: const Text('Wallet'),
                onTap: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //     builder: (BuildContext context) => Wallet()));
                },
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('My Favourites'),
                onTap: () {},
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ListTile(
                leading: const Icon(Icons.search_off_rounded),
                title: const Text('Track order'),
                onTap: () {},
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ListTile(
                leading: const Icon(Icons.work_history),
                title: const Text('order History'),
                onTap: () {},
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ListTile(
                leading: const Icon(Icons.contact_support_sharp),
                title: const Text('Contact us'),
                onTap: () {},
              ),
            ])),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
