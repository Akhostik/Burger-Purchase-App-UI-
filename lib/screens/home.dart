import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app9/models/detail.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      
       backgroundColor: Colors.grey[900],
body: SingleChildScrollView(
  child:   Column(
  
    children: [
  
      SizedBox(height: 40),
  
      Container(
  
        padding: EdgeInsets.all(20),
  
        child: Row(
  
          mainAxisAlignment: MainAxisAlignment.spaceAround,
  
          children:[
  
            Text('PROMOTIONS',  style: TextStyle(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold,
  
            fontFamily: 'mypop'
  
             )),
  
       
  
               Text('Snacks',  style: TextStyle(color: Colors.white, fontFamily: 'mypop')),
  
                  Text('Drinks',  style: TextStyle(color: Colors.white, fontFamily: 'mypop')),
  
                  Icon(Icons.search, color: Colors.white,),
  
                  Icon(Icons.person, color: Colors.white),
  
                  Icon(Icons.shopping_cart, color: Colors.white,),
  
          ]
  
        )
  
      ),
  
  
  
  
  
      SizedBox(height: 10),
  
        Center(
  
          child:  Column(
  
            children: [
  
              Text('12.99 Dolls',  style: TextStyle(color: Colors.orange,fontSize: 30,fontFamily: 'mypop',fontWeight: FontWeight.bold )),
  
              Text('only for limited time',  style: TextStyle(color: Colors.grey,  fontFamily: 'mypop')),
  
  
  
               SizedBox(height: 10),
  
  
  
                Text('BURGER',  style: TextStyle( letterSpacing: 0, color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold,         fontFamily: "mypop")),
  
              RaisedButton(
                color: Colors.black,
                elevation: 10,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Details()
                  ));
                },
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text('View', style: TextStyle(color: Colors.white, fontFamily: 'mypop')
  
              ))
  
             ],
  
          ), 
  
        ),
  
        SizedBox(height: 10),
  
         CarouselSlider(
  
                items: [
  
                              
  
                 Material(
  
                    elevation: 10,
  
                    color: Colors.grey[800],
  
                    borderRadius: BorderRadius.circular(30),
  
                                    child: Container(
  
                      margin: EdgeInsets.all(6.0),
  
                      decoration: BoxDecoration(
  
                        borderRadius: BorderRadius.circular(8.0),
  
                        image: DecorationImage(
  
                        image: AssetImage('assets/burg1.png'),
  
                          // fit: BoxFit.cover,
  
                        ),
  
                      ),
  
                    ),
  
                  ),
  
                    
  
                  //4th Image of Slider
  
                  Material(
  
                    elevation: 10,
  
                    color: Colors.grey[800],
  
                    borderRadius: BorderRadius.circular(30),
  
                                    child: Container(
  
                      margin: EdgeInsets.all(6.0),
  
                      decoration: BoxDecoration(
  
                        borderRadius: BorderRadius.circular(8.0),
  
                        image: DecorationImage(
  
                        image: AssetImage('assets/burg2.png'),
  
                          // fit: BoxFit.cover,
  
                        ),
  
                      ),
  
                    ),
  
                  ),
  
                    
  
            
  
            ],
  
                
  
              //Slider Container properties
  
                options: CarouselOptions(
  
                  height: 180.0,
  
                  enlargeCenterPage: true,
  
                  autoPlay: true,
  
                  aspectRatio: 16 / 9,
  
                  autoPlayCurve: Curves.fastOutSlowIn,
  
                  enableInfiniteScroll: true,
  
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
  
                  viewportFraction: 0.8,
  
                ),
  
            ),
  
       Align(
  
         alignment: Alignment.centerRight,
  
         
  
              child: Padding(
  
                padding: const EdgeInsets.only(right:10),
  
                child: Column(
  
          
  
           crossAxisAlignment: CrossAxisAlignment.end,
  
           children: [
  
             SizedBox(height:10),
  
             Text('CLASSIC BURGER',  style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'mypop')),
  
             Text('Come taste from the  \n best sellers in Jtown',  style: TextStyle(color: Colors.grey,fontFamily: 'mypop' )),
  
              SizedBox(height: 10),
  
              Row(
  
                mainAxisAlignment: MainAxisAlignment.end,
  
                children: [
  
                Text('Share', style: TextStyle(color: Colors.grey, fontFamily: 'mypop',)),
  
                SizedBox(width:5),
  
                Icon(Icons.share, color: Colors.white,)
  
              ],
  
              ),
  
              
  
           ],
  
         ),
  
              ),
  
       ),
  
        Row(
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
          children: [
  
            Align(
  
              alignment: Alignment.centerLeft,
  
                    child: Padding(
  
                      padding: const EdgeInsets.only(left: 25),
  
                      child: Column(
  
               
  
                children: [
  
       Icon(Icons.phone, color: Colors.white,),
  
       Icon(Icons.mail_outlined,color: Colors.white,),
  
                Icon(Icons.cloud, color: Colors.white,)
  
                ],
  
              ),
  
                    ),
  
            ),
  
  
  
            Padding(
  
              padding: const EdgeInsets.only(right:10),
  
              child: RaisedButton(
  
                shape: RoundedRectangleBorder(
  
                  borderRadius: BorderRadius.circular(20)
  
                ),
  
    onPressed: () {},
  
    textColor: Colors.white,
  
    
  
    padding: const EdgeInsets.all(0.0),
  
    child: ClipRRect(
  
      borderRadius: BorderRadius.circular(20),
  
        child: Container(
  
          
  
          width: 100,
  
        decoration: const BoxDecoration(
  
          gradient: LinearGradient(
  
              colors: <Color>[
  
                 Colors.orangeAccent,
  
                Colors.orange,
  
                Colors.orange,
  
                
  
              ],
  
          ),
  
        ),
  
        padding: const EdgeInsets.all(10.0),
  
        child: Center(
  
          child: const Text(
  
              'order now',
  
              style: TextStyle(fontSize: 15, color: Colors.black)
  
          ),
  
        ),
  
      ),
  
    ),
  
  ),

  
  
            )
  
          ],
  
        ),
  
  
  
      Container(
    margin: EdgeInsets.only(right:20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('EN', style: TextStyle(color: Colors.orange)),
        Text('|', style: TextStyle(color: Colors.orange)),
        Text('SP', style: TextStyle(color: Colors.grey)),
        Text('|', style: TextStyle(color: Colors.grey)),
        Text('FR', style: TextStyle(color: Colors.grey)),
        Text('|', style: TextStyle(color: Colors.grey)),
      ],
    ),
  ),
  SizedBox(height: 10)
  
     
  
             ],
  
  
  
        ),
),

     );
   }
 }


 Widget icon(){
   return IconButton(
      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
      icon: FaIcon(FontAwesomeIcons.whatsapp), 
      onPressed: () { print("Pressed"); }
     );
 }