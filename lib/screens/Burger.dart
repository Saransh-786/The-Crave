import 'package:email_password_login/screens/Menu.dart';
import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  const Burger({Key? key}) : super(key: key);

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
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
                      'BURGER',
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
                        'https://c.ndtvimg.com/2022-06/gp4k2jro_burgers_625x300_20_June_22.jpg?im=FaceCrop,algorithm=dnn,width=620,height=350',
                        width: double.infinity,
                        height: 210,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'RS 50',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    'VEGETABLES BURGER',
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
                        _buildIconText(
                            Icons.access_time_outlined, Colors.blue, '40 min'),
                        _buildIconText(
                            Icons.star_outlined, Colors.amber, '4.6'),
                        _buildIconText(Icons.local_fire_department_outlined,
                            Colors.red, '100 kcal'),
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
                        '1. French beans - strung\n'
                        '2. blanched and chopped fine\n'
                        '3. cabbage - grated\n'
                        '4. cauliflower - grated\n'
                        '5. carrots\n'
                        '6. potatoes - boiled and mashed\n'
                        '7. coriander\n'
                        '8. powderSalt - to taste\n'
                        '9. Turmeric powder\n'
                        '10. boiled peas\n'
                        '11. eggs - slightly beaten\n'
                        '12. maida\n'
                        '13. Bread\n'
                        '14. crumbsOil',
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
                      'Crisp and crunchy pattie made with potatoes and peas coated with bread crumbs and sliced between burger buns along with mustard and mayonnaise.',
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
