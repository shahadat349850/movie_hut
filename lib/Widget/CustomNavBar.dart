import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white54,
            ) ,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "CategoryPage");
            },
            child: Icon(
              Icons.category,
              size: 30,
              color: Colors.white54,
            ) ,
          ),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.white54,
            ) ,
          ),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.person,
              size: 30,
              color: Colors.white54,
            ) ,
          ),
        ],
      ),

    );
  }
}