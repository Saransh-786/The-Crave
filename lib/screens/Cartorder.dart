import 'package:flutter/material.dart';
import 'MapBeverage.dart';

cartOrderBox(dynamic title, dynamic image, dynamic price) {
  return Column(
    children: [
      (Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(children: [
              Container(
                color: Colors.white,
                height: 90,
                width: 90,
                child: Image(image: NetworkImage(image)),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Row(
                    children: [
                      Text('Rs'),
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        price.toString(), textAlign: TextAlign.end,
                        // style: TextStyle(
                        //     fontSize: 16,
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold),
                      ),
                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: InkWell(
                      //     onTap: (){},
                      //     child: Container(

                      //       color: Color.fromARGB(210, 253, 86, 86),
                      //       height: 30,
                      //       width: 50,
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Text('Delete'),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
            ]),
          ))),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

TotalCartOrderBox(String total) {
  return (Container(
    height: 100,
    width: 400,
    decoration: BoxDecoration(
        color: Color.fromARGB(210, 253, 86, 86),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Row(
            children: [
              Text(
                'Your Total',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              // Text('='),
              Text(
                total,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Container(
                    color: Color.fromARGB(255, 19, 91, 96),
                    height: 30,
                    width: 80,
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Confirm'),
                    ),
                  ),
                  onTap: () {
                    // buyed = cartmap;
                    // cartmap = {};
                  },
                ),
              )
            ],
          )
        ],
      ),
    ),
  ));
}
