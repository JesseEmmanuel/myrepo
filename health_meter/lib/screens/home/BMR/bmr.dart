import 'package:flutter/material.dart';

class BMR extends StatefulWidget {
  @override
  _BMRState createState() => _BMRState();
}

class _BMRState extends State<BMR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
              color: Color.fromRGBO(123, 193, 211, 1),
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Basal Metabolic Rate', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white))
              ),
            Expanded(
              child: Divider(),
            ),
            CircleAvatar(
            maxRadius: 50.0,
            backgroundColor: Colors.transparent, 
            child: ClipOval(
              child: Image.asset('images/bmr.jpg'),
              )
            ),
            SizedBox(height: 30,),
            OutlineButton(
          onPressed: (){},
          child: Text('Calculate BMR', style: TextStyle(color: Colors.white,  fontSize: 18.0),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          borderSide: BorderSide(color: Colors.white),
          ),
          Expanded(
              child: Divider(),
            ),
          ],
        ),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              color: Colors.white,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                child: Column(
                  children: <Widget>[
                    Text('Output',style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}