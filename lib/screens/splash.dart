import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_app9/screens/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override 
  void initState(){
    super.initState();
    Timer(Duration (seconds: 5),()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 60,),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50,
                        child: Icon(
                          
                          Icons.fastfood, color: Colors.orange,
                          size: 50,
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10),
                      ),
                      
                      Text('Burger & Shayi', style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold,)),
                      SizedBox(height: 100,),
                        CircularProgressIndicator(
                           backgroundColor: Colors.orange,

                        ),
                         SizedBox(height: 10,),
                         Text('The best Burger \n plug in Jtown', style: TextStyle(color: Colors.white,fontSize: 15, )),
                  
                  ],
                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}