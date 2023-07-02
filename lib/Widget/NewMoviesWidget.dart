import 'package:flutter/material.dart';

class NewMoviesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Movies',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize:16,
                  ),
                ),
              ],
            ),
        ),
        SizedBox(height:15,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i<11;i++)
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'MoviePage');
                },
                child: Container(
                  width: 190,
                  height: 300,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        child:Image.asset("assets/images/$i.jpg",
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10,
                        horizontal: 5,
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Movie Title Here',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.w500,
                               ),
                            ),
                            SizedBox(height: 2),

                            Text(
                              'Action/Adventure',
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                SizedBox(height: 5),
                                Text(
                                    '8.5',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 14,
                                  ),

                                ),
                              ],

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

        ),

      ],
    );
  }
}