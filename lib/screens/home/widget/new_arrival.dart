import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/home/widget/categories_list.dart';
import 'package:clothes_app/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CategoriesList('New Arrival'),
        Container(
            height: 280,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ClothesItem(clothesList[index]),
                // ignore: prefer_const_constructors
                separatorBuilder: (_, index) => SizedBox(width: 10,),
                itemCount: clothesList.length))
      ],
    ));
  }
}
