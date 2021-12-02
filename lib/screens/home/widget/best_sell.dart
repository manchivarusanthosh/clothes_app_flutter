// ignore_for_file: prefer_const_constructors

import 'package:clothes_app/screens/home/widget/categories_list.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BestSell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList('Best Of Sell'),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/best1.png',
                          width: 80,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Miniso Woman Oversize',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          Text(
                            'T-shirt',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          Text(
                            'Rs.2000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5,color: Theme.of(context).primaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
