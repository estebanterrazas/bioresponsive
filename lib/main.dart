import 'package:flutter/material.dart';
import 'package:portfolio_app/views/home_view.dart';


//import 'package:portfolio_app/views/landing_page.dart';
 
void main(){
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Esteban Bio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      
      );
    
  }
}