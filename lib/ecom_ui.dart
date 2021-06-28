import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EcomUI extends StatefulWidget {
  @override
  _EcomUIState createState() => _EcomUIState();
}

class _EcomUIState extends State<EcomUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text('Ecom App UI',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold))),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, top: 50)),
              Text(
                'Items',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 235)),
                  Text(
                    'View More',
                    style: TextStyle(color: Colors.purple, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 350,
              width: 395,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'asset/images/Note-20-Ultra.jpg',
                      fit: BoxFit.fill,
                      height: 270,
                      width: 395,
                    ),
                    ListTile(
                      title: const Text(
                        'Note 20 Ultra',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Row(
                        children: [
                          FlutterRatingBar(
                            initialRating: 3.5,
                            fillColor: Colors.amber,
                            borderColor: Colors.amber.withAlpha(50),
                            allowHalfRating: true,
                            itemSize: 20,
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            '5.0 (23 Reviews)',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 50)),
                  Text(
                    'Popular Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 160)),
                      Text(
                        'View More',
                        style: TextStyle(color: Colors.purple, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 190,
                          width: 190,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'asset/images/macbook-air.jpg',
                                  fit: BoxFit.fill,
                                  height: 110,
                                  width: 180,
                                ),
                                ListTile(
                                  title: const Text(
                                    'MacBook Air',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  subtitle: Row(
                                    children: [
                                      FlutterRatingBar(
                                        initialRating: 4.0,
                                        fillColor: Colors.amber,
                                        borderColor: Colors.amber.withAlpha(50),
                                        allowHalfRating: true,
                                        itemSize: 12,
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      Text(
                                        '4.9 (20 Reviews)',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 190,
                              width: 190,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'asset/images/apple-iphone-12.jpg',
                                      fit: BoxFit.fill,
                                      height: 110,
                                      width: 200,
                                    ),
                                    ListTile(
                                      title: const Text(
                                        'Iphone 12',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      subtitle: Row(
                                        children: [
                                          FlutterRatingBar(
                                            initialRating: 4.2,
                                            fillColor: Colors.amber,
                                            borderColor:
                                                Colors.amber.withAlpha(50),
                                            allowHalfRating: true,
                                            itemSize: 12,
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Text(
                                            '4.7 (16 Reviews)',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ],
      ),
    );
  }
}

// Widget horizontalcardview() {
//   return Scaffold();
//}
