import 'package:email_password_login/screens/Maincourse.dart';
import 'package:flutter/material.dart';

class MV4 extends StatefulWidget {
  const MV4({Key? key}) : super(key: key);

  @override
  State<MV4> createState() => _MV4State();
}

class _MV4State extends State<MV4> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context,
              new MaterialPageRoute(builder: (context) => MainCourse()));
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
                      'MAIN COURSE (VEG)',
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
                        'https://as2.ftcdn.net/v2/jpg/03/97/98/73/1000_F_397987329_4M4rOKawfjdwC6Gkf6o41i4wXAOwmRCh.jpg',
                        width: double.infinity,
                        height: 210,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'RS 180',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    'CHOLE BHATURE',
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
                            '1 hr 15 min'),
                        _buildIconText(
                            Icons.star_outlined, Colors.amber, '4.8'),
                        _buildIconText(Icons.local_fire_department_outlined,
                            Colors.red, '427 kcal'),
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
                        '1. Chickpeas\n'
                        '2. Oil\n'
                        '3. Bay leaf\n'
                        '4. Cinnamon stick\n'
                        '5. Cloves \n'
                        '6. Whole pepper corns\n'
                        '7. Green cardamom\n'
                        '8. Black cardamom\n'
                        '9. Turmeric powder\n'
                        '10. Chilli powder\n'
                        '11. Coriander powder\n'
                        '12. Cumin powder\n'
                        '13. Cumin seeds\n'
                        '14. Asafoetida\n'
                        '15. Salt\n'
                        '16. Onions\n'
                        '17. Tomatoes\n'
                        '18. Ginger\n'
                        '19. Garlic\n'
                        '20. Ajwain\n'
                        '21. Lime juice\n'
                        '22. Green chili\n'
                        '23. Tea bag\n'
                        '24. Butter\n'
                        '25. Refined flour\n'
                        '26. Yeast\n'
                        '27. Whole wheat flour\n',
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
                      'A quintessential North Indian breakfast recipe,\n '
                      'relished by one and all can now be easily cooked at home.\n '
                      'Straight from the Punjabi kitchen - hot and delicious, chole bhature!\n '
                      'The art of making feather soft bhaturas served with chole or chickpeas',
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
