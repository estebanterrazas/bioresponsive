import 'package:flutter/material.dart';


import 'package:portfolio_app/landing_page.dart';
 
void main(){
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LandingPage(),
      debugShowCheckedModeBanner: false,
      
      );
    
  }
}