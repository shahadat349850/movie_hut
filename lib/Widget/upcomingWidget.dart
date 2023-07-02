import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(
          horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              'Upcoming Movies',
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
                fontSize: 16,

              ),
            ),
          ],),

        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://pic-bstarstatic.akamaized.net/ugc/31da84be57740ab6f21b74003557bddf.jpg@720w_405h_1e_1c_90q",

                         height: 180,
                        width: 350,
                        fit: BoxFit.cover,
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