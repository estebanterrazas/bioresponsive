import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/NavigationBar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu), 
            onPressed: (){}
            ),
            NavBarLogo(),
        ],

      ),
    );
}
}