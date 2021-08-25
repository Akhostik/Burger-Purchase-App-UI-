import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          children: [
               SizedBox(height: 10),
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

     Text('BURGER',  style: TextStyle( letterSpacing: 0, color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold,         fontFamily: "mypop")),
      Text('HOUSE',  style: TextStyle( letterSpacing: 0, color: Colors.white,fontSize:30,         fontFamily: "mypop")),

      Container(
      margin: EdgeInsets.only(left:25),
        child: Row(
          children: [
            burgerCard('assets/burg1.png', 'Arewa burger', '\$500'),
               burgerCard('assets/burg2.png', 'Japanese burger', '\$1k'),
          ],
        ),
      ),
SizedBox(height: 20),
       Container(
      margin: EdgeInsets.only(left:25),
        child: Row(
          children: [
            burgerCard('assets/burg2.png', 'Nigerian burger', '\$150'),
               burgerCard('assets/burg1.png', 'Yoruba burger', '\$20'),
          ],
        ),
      ),
      SizedBox(height: 10),
    CircleAvatar(
      backgroundColor: Colors.orange,
      radius: 15,
      child: Icon(Icons.keyboard_arrow_down, color: Colors.black)),
      SizedBox(height: 50),

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
  )
          ]
        )
      ),
    );
  }
}

Widget burgerCard(String img, name, price){
  return  Container(
 margin: EdgeInsets.only(),
    child: Column(
      children: [
        Image(
          height: 70,
          width: 80,
          image: AssetImage(img)
        ),
        Card(
          color: Colors.black,
          child: Container(
            padding: EdgeInsets.all(10),
            width:150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: TextStyle(color: Colors.white,fontFamily: 'mypop', )),
                Text(price, style: TextStyle(color: Colors.orange, fontFamily: 'mypop', ),)
              ]
            )
          )
        )
      ],
    ),
  );
}