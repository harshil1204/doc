import 'package:doc/Pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class SplaceScreen extends StatefulWidget {
  SplaceScreen({Key? key}) : super(key: key);
  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}
class _SplaceScreenState extends State<SplaceScreen> {
  List<ContentConfig> listContentConfig = [];
  @override
  void initState() {
    super.initState();
    listContentConfig.add(
      const ContentConfig(
       // title: "ERASER",
        description:"Thousand of doctor & experts to help your health!",
        styleDescription: TextStyle(fontSize: 40.0),

        pathImage: "image/splace/good.png",
        backgroundColor: Color(0xfff5a623),

      ),
    );
    listContentConfig.add(
      const ContentConfig(
       //title: "PENCIL",
        description: "Health check & Consultations easily anywhere anytime",
        styleDescription: TextStyle(fontSize: 40.0),
        pathImage:  "image/splace/s2.JPG",
        backgroundColor: Color(0xff203152),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
       // title: "RULER",
        styleDescription: TextStyle(fontSize: 40.0),
        description:"Let's Start living healthy and well with us right now!",
        pathImage: "image/splace/good.png",
        backgroundColor: Color(0xff9932CC),

      ),
    );
  }
  void onDonePress() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }
  @override
  Widget build(BuildContext context) {
    return  IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}



