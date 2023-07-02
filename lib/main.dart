import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Homepage.dart';
import 'Widget/CategoryPage.dart';
import 'Widget/MoviePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
    State<MyApp> createState() => _MyAppState();
  }

class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        "/" : (context)=> HomePage(),
        "CategoryPage":(context) => CategoryPage(),
        "MoviePage":(context) => MoviePage(),
      },

    );
  }
}