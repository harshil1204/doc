import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    //var width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(

          title: Text("Doco"),
          elevation: 20.0,
        //  centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          ],
        ),
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
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
          Flexible(
            child: Container(
            height: 55,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(13)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blue.withOpacity(.3),
                  blurRadius: 15,
                  offset: Offset(5, 5),
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                border: InputBorder.none,
                hintText: "Search",
              //  hintStyle: TextStyles.body.subTitleColor,
                suffixIcon: SizedBox(
                  width: 32,
                  child:
                  Icon(Icons.search, color: Colors.purple),
                ),
              ),
            ),
        ),
          ),
            SizedBox(height: 15.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctor Speciality",
                    style: TextStyle(fontSize:20.0,fontWeight: FontWeight.w700),),
                  Text("See all",style: TextStyle(fontSize:15.0,color: Colors.blue),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              child: GridView.count(crossAxisCount: 4,
                children: [

                ],

              ),
            ),

            Expanded(
              child:GridView.count(
                  crossAxisCount: 3,
                children: [
                  card1(Icons.person),
                  card1(Icons.video_call),
                  card1(Icons.abc),
                  card1(Icons.abc),
                  card1(Icons.abc),
                  card1(Icons.abc),

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
  Widget card1(IconData i){
    return  Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        color: Colors.lightBlueAccent,
        elevation: 10.0,
        child: Icon(i),

      ),
    );
  }
}
