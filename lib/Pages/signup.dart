import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sing Up", style: TextStyle(
                  fontSize: 35
                ),
                ),
                SizedBox(height: 40.0),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    labelText: "E-Mail",
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    labelText: "Password",

                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    labelText: "Confirm Password",
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(50))
                  ),
                ),
                SizedBox(height: 20.0,),
                CupertinoButton(
                    child: Text("Register" ,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    color: Theme.of(context).colorScheme.secondary,
                    onPressed: () {} ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
