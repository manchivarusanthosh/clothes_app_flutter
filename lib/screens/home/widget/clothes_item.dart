// ignore_for_file: use_key_in_widget_constructors

import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
  // ignore: prefer_const_constructors_in_immutables
  ClothesItem(this.clothes);
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage(clothes)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.all(8),
                  height: 170,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(clothes.imageUrl),
                          fit: BoxFit.fitHeight)),
                ),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                      // ignore: prefer_const_constructors
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ))
              ],
            ),
            Text(clothes.title,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Theme.of(context).primaryColor,
                )),
            Text(clothes.subtitle),
            Text(clothes.price),
          ],
        ),
      ),
    ));
  }
}
