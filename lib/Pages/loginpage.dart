import 'package:doc/Pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  child: Icon(Icons.person ,size: 40.0),
                ),
                SizedBox(height: height*0.07,),
                Text("Login",style: TextStyle(
                  fontSize: 40.00
                )),
                SizedBox(height: height*0.03,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(50.0) ),
                    labelText: "Enter E-mail",
                  ),
                ),
                 SizedBox(height: height*0.03,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                    labelText: "Enter Password",
                  ),
                ),
                SizedBox(height: height*0.01),
                InkWell(
                  onTap: (){},
                    child: Text("Forget password?",style: TextStyle(color: Colors.blueAccent,fontSize: 16.0),
                    ),
                ),
                SizedBox(height: height*0.04),
               CupertinoButton(child: Text("Login" ,style: TextStyle(
                 fontSize: 20.0
               ),
               ),
                   color: Theme.of(context).colorScheme.secondary,
                   onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                   },
               ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? "),
        InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SingUp(),));
        },
          child: Text("Sing Up",style: TextStyle(color: Colors.blueAccent),),
          ),]
    )
    ),
    );
  }
}
