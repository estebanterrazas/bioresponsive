import 'package:flutter/material.dart';

import 'navbar_logo.dart';
import 'navbar_item.dart';


class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Trabajos'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Mi Historia')

            ],
          ),
        ],
      ),
    );
  }
}