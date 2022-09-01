import 'package:email_password_login/screens/Dessert.dart';
import 'package:flutter/material.dart';

class D2 extends StatefulWidget {
  const D2({Key? key}) : super(key: key);

  @override
  State<D2> createState() => _D2State();
}

class _D2State extends State<D2> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(
              context, new MaterialPageRoute(builder: (context) => Dessert()));
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey[800],
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              'Recipe',
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 75),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'DESSERT',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        'https://i.ndtvimg.com/i/2017-10/gajar-ka-halwa-recipe_620x330_51507896671.jpg',
                        width: double.infinity,
                        height: 210,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'RS 390',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    'GAJAR KA HALWA',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildIconText(Icons.access_time_outlined, Colors.blue,
                            '1 hr 10 min'),
                        _buildIconText(
                            Icons.star_outlined, Colors.amber, '4.4'),
                        _buildIconText(Icons.local_fire_department_outlined,
                            Colors.red, '386 kcal'),
                      ]),
                  const SizedBox(height: 25),
                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(
                      height: 45,
                      width: 300,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          elevation: 5),
                      onPressed: () {},
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Ingredients',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ]),
                  Row(children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        '1. Carrot\n'
                        '2. Milk\n'
                        '3. Cardamoms\n'
                        '4. Ghee\n'
                        '5. Sugar\n'
                        '6. Raisin\n'
                        '7. Almonds\n'
                        '8. Dates',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ]),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      'One of the most popular Indian desserts,'
                      ' Gajar ka Halwa is known to have originated in Punjab. '
                      'It is a delicious delight during the winter months. '
                      'Order this delicious dessert for special occasions.',
                      style: TextStyle(
                        fontSize: 18,
                        //color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(text, style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
