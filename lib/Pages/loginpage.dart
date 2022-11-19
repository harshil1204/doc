import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 90),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  child: Icon(Icons.person ,size: 40.0),
                ),
                SizedBox(height: height*0.05,),
                Text("Login",style: TextStyle(
                  fontSize: 40.00
                )),
                SizedBox(height: 30.00,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(50.0) ),
                    labelText: "Enter E-mail",
                  ),
                ),
                 SizedBox(height: 20.00,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                    labelText: "Enter Password",
                  ),
                ),
                SizedBox(height: 20.0),
               CupertinoButton(child: Text("Login" ,style: TextStyle(
                 fontSize: 20.0
               ),
               ),
                   color: Theme.of(context).colorScheme.secondary,
                   onPressed: (){})
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
        InkWell(onTap: () {},
          child: Text("Sing Up"),
          ),]
    )
    ),
    );
  }
}
