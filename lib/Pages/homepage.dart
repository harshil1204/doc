import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      body: Column(
        children: [
          Container(
          ),
        ],
      ),
        drawer: Drawer(
          elevation:0.5,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("ABC"),
                  accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text("DA" , style: TextStyle(fontSize: 40.0 )
                    ,),
                ),
              ),
              ListTile(
                title: Text("1"),
              ),
              ListTile(
                title: Text("2"),
              ),
              ListTile(
                title: Text("3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
