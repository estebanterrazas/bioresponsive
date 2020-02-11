import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/call_to_action.dart';
import 'package:portfolio_app/widgets/centered_view.dart';
import 'package:portfolio_app/widgets/course_detail.dart';
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
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join Course'),
                    )
                  ),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}