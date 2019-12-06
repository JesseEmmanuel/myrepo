import 'package:health_meter/screens/home/BMI/bmi.dart' as bmi;
import 'package:health_meter/screens/home/BMR/bmr.dart' as bmr;
import 'package:health_meter/screens/home/CIT/cit.dart' as cit;
import 'package:health_meter/screens/home/WIT/wit.dart' as wit;
import 'package:health_meter/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin{
  //List<Widget>mypages = [BMI(),BMR(),WIT(),CIT()];
  
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Health-O-Meter',), 
      backgroundColor:Color.fromRGBO(123, 193, 211, 1),
      //backgroundColor: Color.fromRGBO(123, 193, 211, 1),
      bottom: new TabBar(
        controller: controller,
        tabs: <Tab>[
          new Tab(text: 'BMI',icon: Icon(FontAwesomeIcons.weight)),
          new Tab(text: 'BMR',icon: Icon(FontAwesomeIcons.clock)),
          new Tab(text: 'Water-In',icon: Icon(FontAwesomeIcons.male)),
          new Tab(text: 'Calorie-In',icon:Icon(FontAwesomeIcons.hamburger))
          ],
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new bmi.BMI(),
          new bmr.BMR(),
          new wit.WIT(),
          new cit.CIT()
          
        ],
      ),
    );
  }
}
