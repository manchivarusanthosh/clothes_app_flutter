import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CategoriesList extends StatelessWidget {
  final String title;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CategoriesList(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: prefer_const_constructors
          Text(
            title,
            // ignore: prefer_const_constructors
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Row(
            children: [
              // ignore: prefer_const_constructors
              Text(
                'View All',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              // ignore: prefer_const_constructors
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                // ignore: prefer_const_constructors
                child: Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
