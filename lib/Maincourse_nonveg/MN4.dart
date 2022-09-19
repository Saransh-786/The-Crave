import 'package:email_password_login/screens/MaincourseNon.dart';
import 'package:flutter/material.dart';
import 'package:email_password_login/screens/Cart.dart';
import 'package:email_password_login/screens/MapBeverage.dart';

class MN4 extends StatefulWidget {
  const MN4({Key? key}) : super(key: key);

  @override
  State<MN4> createState() => _MN4State();
}

class _MN4State extends State<MN4> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(
              context, new MaterialPageRoute(builder: (context) => Nonveg()));
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
                      'MAIN COURSE (NON-VEG)',
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
                        'https://www.flourandspiceblog.com/wp-content/uploads/2020/05/Mutton-Handi-1-1152x1536.jpg',
                        width: double.infinity,
                        height: 210,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'RS 540',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    'MUTTON HANDI',
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
                            Icons.access_time_outlined, Colors.blue, '30 min'),
                        _buildIconText(
                            Icons.star_outlined, Colors.amber, '4.8'),
                        _buildIconText(Icons.local_fire_department_outlined,
                            Colors.red, '294 kcal'),
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
                      onPressed: () {
                        setState(() {
                          addValueTocartMap(cartmap, Nonveg(), 'object.3');
                        });
                      },
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
                        '1. Mutton\n'
                        '2. onion\n'
                        '3. Garlic cloves (crushed)\n'
                        '4. ginger-garlic paste\n'
                        '5. coriander powder\n'
                        '6. turmeric powder\n'
                        '7. degi mirch\n'
                        '8. Kashmiri mirch\n'
                        '9. lemon juice\n'
                        '10. yogurt\n'
                        '11. mustard oil\n'
                        '12. fennel powder\n'
                        '13. garam masala powder\n'
                        '14. Cloves\n'
                        '15. Black peppercorn\n'
                        '16. cinnamon sticks\n'
                        '17. Bay leaf\n'
                        '18. cumin seeds\n'
                        '19. cumin powder\n'
                        '20. Wheat dough (atta, to seal the vessel)\n'
                        '21. salt',
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
                      'Succulent mutton chunks marinated and cooked in a pool of spices and herbs, this rich and robust mutton curry hailing from East India is a hit across seasons!',
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
