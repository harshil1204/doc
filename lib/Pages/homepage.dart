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
        appBar: AppBar(
          title: Text("Doctor Appointment System "),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("View Profile",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    accountEmail: Text("Edit Profile",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white ,
                    child: Icon(Icons.person_add_alt),
                  ),
                ),
                ListTile(
                    title: Text("Edit Profile",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                ListTile(
                  title: Text("Appointment",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.calendar_month,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Report",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.monitor_heart,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Prescripation",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.topic_outlined,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Laboratories",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.biotech_outlined,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Medical",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.local_hospital,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Activity",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.fitness_center,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("Feedback",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.feedback,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("logout",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  leading: Icon(Icons.logout_outlined,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),

      ),

    );
  }
}
