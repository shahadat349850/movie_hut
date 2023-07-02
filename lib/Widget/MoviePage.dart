import 'package:flutter/material.dart';

import 'CustomNavBar.dart';
import 'MoviePageButtons.dart';
import 'RecommendedWidget.dart';

class MoviePage extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return Scaffold(
       body: Stack(
         children: [

           Opacity(
             opacity: 0.4,
             child: Image.asset(
               "images/9.jpg",
               height: 350,
               width: double.infinity,
               fit: BoxFit.cover,

             ),
           ),
           SingleChildScrollView(
             child: SafeArea(
               child: Column(
                 children: [
                   Padding(padding:EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.pop(context);
                           },
                           child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),

                         ),

                         InkWell(
                           onTap: (){},
                           child: Icon(Icons.favorite_border,color: Colors.white,size: 30,),

                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 60,),
                   Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(16),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.red.withOpacity(0.3),
                                 spreadRadius: 1,
                                 blurRadius: 4,
                               ),
                             ],

                           ),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(20),
                             child: Image.asset(
                               "images/9.jpg",
                            height: 180,
                               width: 250,
                             ),
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 200),
                           height: 60,
                           width: 60,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(40),
                             color: Colors.red,
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.red.withOpacity(0.5),
                                 spreadRadius: 2,
                                 blurRadius: 8,
                               )
                             ]
                           ),
                           child: Icon(
                             Icons.play_arrow_rounded,
                             color: Colors.white,
                             size: 30,
                           ),
                         ),
                       ],
                     ),
                   ),
                    SizedBox(height: 30,),
                   MoviePageButtons(),
                   Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("QUANTUMANIA",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 30,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                         SizedBox(height: 15,),

                         Text("Ant-Man and the Wasp: Quantumania is the upcoming third installment in the Ant-Man film series and the twelfth film in the Marvel Cinematic Universe (MCU). ",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 16,
                           ),
                           textAlign: TextAlign.justify,
                         )
                       ],
                     ),
                   ),
                   SizedBox(height: 10,),
                   RecommendedWidget(),
                 ],
               ),
             ),
           )
         ],
       ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}