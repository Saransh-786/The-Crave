import 'package:flutter/material.dart';
import 'MapBeverage.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int total = 0;
  List<Widget> cartitems = [];

  @override
  void initState() {
    super.initState();
    _calculateTotal();
  }

  void _calculateTotal() {
    cartmap.forEach((key, value) {
      value.forEach((element) {
        cartitems.add(CartItem(
          name: key[element]['name'],
          image: key[element]['imagelink'],
          price: key[element]['price'].toDouble(), // Ensure price is double
          onUpdate: _updateTotal,
        ));
      });
    });

    cartmap.forEach((key, value) {
      for (var element in value) {
        double price =
            key[element]['price'].toDouble(); // Ensure price is double
        total += price.toInt();
      }
    });
  }

  void _updateTotal(double priceChange) {
    setState(() {
      total += priceChange.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Order Summary',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: cartitems,
          ),
          SizedBox(height: 20),
          _buildTotalCartOrderBox(
              total.toString()), // Place the TotalCartOrderBox here
        ],
      ),
    );
  }

  Widget _buildTotalCartOrderBox(String total) {
    return Container(
      height: 100, // Set the desired height here
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.end, // Align the content to the bottom
        children: [
          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(210, 190, 222, 10),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Your Total',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        total,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      color: Color.fromARGB(255, 72, 227, 217),
                      height: 30,
                      width: 80,
                      child: Center(
                        child: Text('Confirm'),
                      ),
                    ),
                    onTap: () {
                      // Perform the action when Confirm is tapped
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String name;
  final String image;
  final double price; // Change the type to double
  final Function(double) onUpdate; // Change the parameter type to double

  const CartItem({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.onUpdate,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  double quantity = 1.0; // Change the type to double

  void _incrementQuantity() {
    setState(() {
      quantity++;
      widget.onUpdate(widget.price); // Pass the price as a double
    });
  }

  void _decrementQuantity() {
    if (quantity > 1.0) {
      setState(() {
        quantity--;
        widget.onUpdate(-widget.price); // Pass the price as a double
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              color: Colors.white,
              height: 90,
              width: 90,
              child: Image(image: NetworkImage(widget.image)),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text('Rs'),
                    SizedBox(width: 3),
                    Text(
                      widget.price.toStringAsFixed(2),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: _decrementQuantity,
                    ),
                    Text(
                      quantity.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _incrementQuantity,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Total: Rs ${(widget.price * quantity).toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
