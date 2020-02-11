import 'package:flutter/material.dart';



class NavigationBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150.0,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Trabajos'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('Mi Historia')

            ],
          ),
        ],
      ),
    );
  }
  
}
class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
  }