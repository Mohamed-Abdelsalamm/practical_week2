import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:practical_week2/assets/button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool heart = false;
  int value = 1;
  int selected = 3;
  double rate = 4;
  List<bool> isSelected = [false, false, true, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  heart= ! heart;
                });
              },
              icon: Icon(
                heart == true ?  Icons.favorite : Icons.favorite_border,
                color: heart == true ?  Colors.red : Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        20,
                      ),
                      bottomRight: Radius.circular(
                        20,
                      ),
                    ),
                    child: Image.asset(
                      'lib/assets/images/belgium-home-shirt.jpg',
                      width: 320,
                      height: 320,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                 /* ToggleButtons(
                    direction:  Axis.vertical,
                    onPressed: (int index) {
                      setState(() {
                        // The button that is tapped is set to true, and the others to false.
                        for (int i = 0; i < isSelected.length; i++) {
                          isSelected[i] = i == index;
                        }
                      });
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.red[700],
                    selectedColor: Colors.white,
                    fillColor: Colors.red,
                    color: Colors.white,
                    disabledColor: Colors.blueGrey,
                    constraints: const BoxConstraints(
                      minHeight: 40.0,
                      minWidth: 40.0,
                    ),
                    isSelected: isSelected,
                    children: [
                      Container(width:40,height:40,child: Center(child: Text('S',style: TextStyle(color: Colors.white,),),),),
                      Text('m',),
                      Text('L',),
                      Text('XL',),
                      Text('2XL',),
                    ],
                  ),*/

                  Column(
                    children: [
                      ButtonSquare(
                        name: 'S',
                        buttonColor: selected== 1 ? Colors.red : Colors.blueGrey,
                        function: () {
                          setState(
                            () {
                              selected = 1;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonSquare(
                        name: 'm',
                        buttonColor: selected== 2 ? Colors.red : Colors.blueGrey,
                        function: () {
                          setState(
                            () {
                              selected = 2;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonSquare(
                        name: 'L',
                        buttonColor: selected== 3 ? Colors.red : Colors.blueGrey ,
                        function: () {
                          setState(
                            () {
                              selected = 3;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonSquare(
                        name: 'XL',
                        buttonColor: selected== 4 ? Colors.red : Colors.blueGrey ,
                        size: 9.0,
                        function: () {
                          setState(
                            () {
                              selected = 4;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonSquare(
                        name: '2X',
                        buttonColor: selected== 5 ? Colors.red : Colors.blueGrey ,
                        size: 9,
                        function: () {
                          setState(
                            () {
                              selected = 5;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  'Belgium EURO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  '20/21 Away by Adidas',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30,
                          glowColor: Colors.red,
                          unratedColor: Colors.red.withOpacity(0.5),
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              rate = rating;
                            });
                          },
                        ),
                        Text(
                          '$rate',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 130,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ButtonSquare(
                              function: () {
                                setState(() {
                                  if (value > 1) value--;
                                });
                              },
                              wight: 40,
                              height: 40,
                              name: '-',
                              size: 16,
                              buttonColor: Colors.red,
                            ),
                          ),
                          Text(
                            '$value',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ButtonSquare(
                              function: () {
                                setState(() {
                                  value++;
                                });
                              },
                              wight: 40,
                              height: 40,
                              name: '+',
                              size: 15,
                              buttonColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              'material :',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Polyester',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              'Shipping :',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' in 5 to 6 Days',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              'Returns :',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Within 20 Days',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 140,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.red,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\$${89*value}',
                            maxLines: 1,
                            style: TextStyle(color: Colors.white, fontSize: 18,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
