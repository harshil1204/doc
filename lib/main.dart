import 'package:doc/Pages/homepage.dart';
import 'package:doc/Pages/loginpage.dart';
import 'package:doc/Pages/signup.dart';
import 'package:doc/Pages/splacescreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
