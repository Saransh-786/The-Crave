import 'package:email_password_login/screens/Menu.dart';
import 'package:flutter/material.dart';

class Biryani extends StatefulWidget {
  const Biryani({Key? key}) : super(key: key);

  @override
  State<Biryani> createState() => _BiryaniState();
}

class _BiryaniState extends State<Biryani> {
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
                      'BIRYANI',
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
                        'https://www.dwarakaorganic.com/wp-content/uploads/2012/06/Veg-Biryani-Recipe-870x470.jpg',
                        width: double.infinity,
                        height: 210,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'RS 150',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    'VEG BIRYANI',
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
                            Icons.access_time_outlined, Colors.blue, '55 min'),
                        _buildIconText(
                            Icons.star_outlined, Colors.amber, '4.3'),
                        _buildIconText(Icons.local_fire_department_outlined,
                            Colors.red, '130 kcal'),
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
                        '1. Cumin seeds\n'
                        '2. onions-grated\n'
                        '3. garlic-ginger paste\n'
                        '4. vegetables-finely chopped\n'
                        '5. coriander powder\n'
                        '6. garam masala\n'
                        '7. turmeric powder\n'
                        '8. salt or to taste\n'
                        '9. chilli powder \n'
                        '10. green chillies-chopped\n '
                        '11. lemon juice\n'
                        '12. rice-boiled\n'
                        '13. coriander leaves\n'
                        '14. oil\n',
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
                      'A garden fresh vegetable biryani, bursting with spices and beautiful in its simplicity!',
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
