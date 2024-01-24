import 'package:admin/Dashboard/EditItem.dart';
import 'package:admin/Dashboard/OnGoingOrders.dart';
import 'package:admin/Dashboard/home.dart';
import 'package:admin/Edit%20item/Sp%20Item%20details.dart';
import 'package:admin/Edit%20item/sp%20offer.dart';
import 'package:admin/auth/Signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins',
      ),
      home: SignIn(),
      // home: SpOffer()
    );
  }}
