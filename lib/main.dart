import 'package:clothes_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xFFFAFAFA),
        // ignore: prefer_const_constructors
        primaryColor: Color(0xFFFFBD00),
        // ignore: prefer_const_constructors, deprecated_member_use
        accentColor: Color(0xFFFFEBC7),
      ),
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
