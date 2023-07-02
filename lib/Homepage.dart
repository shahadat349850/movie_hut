import 'package:flutter/material.dart';

import 'Widget/CustomNavBar.dart';
import 'Widget/NewMoviesWidget.dart';
import 'Widget/upcomingWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 10
                  ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Movie Hut",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500 ),),

                              Text("All movies here",style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500 ),),

                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network("https://scontent.fdac24-2."
                                "fna.fbcdn.net/v/t1.15752-9/351006720_223243020504077_9174529426871097671_n."
                                "jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_ohc=N5bnui5SCD8AX-U_uCj&_nc_ht=scontent."
                                "fdac24-2."
                                "fna&oh=03_AdQa3tcFpgFlJTdc092rF2-NHH3xEMAZpZDOIV251VL3XQ&oe=64C87AA2",height: 50,width: 50,),
                          )
                        ],
                      ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF292B27),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.white,size: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      width: 300,
                      margin: EdgeInsets.only(left: 5,),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white54),
                        ),

                      ),
                    )
                  ],
                ),

              ),
              SizedBox(height: 30,),
              UpcomingWidget(),
              SizedBox(height: 40,),
              NewMoviesWidget(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomNavBar(),
    );
  }
}
