import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/centered_view.dart';
import 'package:portfolio_app/widgets/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
          child: Column(
          children: <Widget>[
            NavigationBar(),
          ],
        ),
      ),
    );
  }
}