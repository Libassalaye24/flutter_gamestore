import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    
      padding: EdgeInsets.only(
      
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
          Text("Welcome to LM app, " , style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5,),
          Text("What would you like to play?" , style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            ),
          ),
        ],),
        CircleAvatar(
          child: Image.asset('assets/images/avatar.png',fit: BoxFit.cover,),
        )  ,
      ],),
    );
  }
}
