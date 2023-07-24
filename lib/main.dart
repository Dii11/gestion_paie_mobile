
//import 'package:first_projet/sign/SignIn.dart';
import 'package:first_project/page/home/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SimpleBottomNavigation(),
    );
  }
}

