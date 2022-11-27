import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doc/Pages/loginpage.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatelessWidget {
  const SplaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: AnimatedSplashScreen(
          splashIconSize: 250,
          backgroundColor: Colors.white,
          nextScreen: LoginPage(),
          splash:Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                  child: Image.asset("image/splaceimg.jpg",)
              ),
              SizedBox(height: 30.0,),
              Text("Your health is our Responsibility",style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 23,
              ),)
            ],
          ) ,
        ),
      ),
    );
  }
}
