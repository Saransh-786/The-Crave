import 'package:flutter/material.dart';
import 'MapBeverage.dart';
import 'Cartorder.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int total = 0;
  List<Widget> cartitems = [];

  @override
  Widget build(BuildContext context) {
    cartmap.forEach(((key, value) {
      value.forEach((element) {
        cartitems.add(cartOrderBox(key[element]['name'],
            key[element]['imagelink'], key[element]['price']));
      });
    }));
    cartmap.forEach(((key, value) {
      for (var element in value) {
        String a = key[element]['price'].toString();
        total += int.parse(a);
      }
    }));
    List<Widget> carttotal = [TotalCartOrderBox(total.toString())];
    cartitems += carttotal;
    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 21, 21),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Order Summary',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: cartitems,
          )
        ],
      ),
    ));
  }
}
