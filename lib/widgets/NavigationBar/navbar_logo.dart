import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      SizedBox(
            height: 80.0,
            width: 150.0,
            child: Image.asset('assets/logo.png'),
          );
    
  }
}