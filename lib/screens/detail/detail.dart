import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/detail/widget/detail_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
        children: [DetailAppBar(clothes)],
      ),
    ));
  }
}
