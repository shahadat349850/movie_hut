import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(padding:EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommended",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),

              Text("See All",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i<11;i++)
              Padding(padding: EdgeInsets.only(left: 10),
                child: Image.asset(
                  "images/$i.jpg",
                  height: 100,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}