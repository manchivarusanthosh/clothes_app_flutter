import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  final bool outerBorder;
  final color;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ColorPicker(this.outerBorder, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: outerBorder ? Border.all(color: color, width: 2) : null),
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
