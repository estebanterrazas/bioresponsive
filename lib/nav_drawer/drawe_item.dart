import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/NavigationBar/navbar_item.dart';


class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only( left: 30.0 , top: 60.0  ),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30.0),
          NavBarItem(title)
        ],
      ),
    );
  }
}