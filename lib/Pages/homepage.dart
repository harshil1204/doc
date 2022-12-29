import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'notification.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text("Doco"),
            elevation: 20.0,
            actions: [
              IconButton(onPressed: (){
               Navigator.push(context,  MaterialPageRoute(builder: (context) => Notification1(),));
              }, icon: Icon(Icons.notifications)),
            ],
          ),
        ),
        drawer: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70.0),
            bottomRight: Radius.circular(70.0)
          ),
          child: Drawer(
            elevation: 20.0,
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
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ListTile(
                    title: Text("Appointment",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.calendar_month,
                      color:Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("Report",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.monitor_heart,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("Prescripation",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.topic_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("Laboratories",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.biotech_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("Medical",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.local_hospital,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("Activity",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.fitness_center,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("Feedback",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.feedback,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text("logout",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    leading: Icon(Icons.logout_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
            Container(
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
              autofocus: false,
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
              child: CarouselSlider(
                  items: color.map((e){
                    return Builder(
                        builder:(context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: e,
                            ),
                          );
                        },
                    );
                  }).toList(),
                  options:CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    initialPage: 0,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true
                  ),
              ),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                flex:3,
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
      ),
    );
  }
  Widget card1(IconData i){
    return  Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        color: Theme.of(context).primaryColor,
        elevation: 10.0,
        child: Icon(i),

      ),
    );
  }
  final color=[Colors.lightBlueAccent,Colors.lightBlue,Colors.amber,Colors.blueGrey];
}
