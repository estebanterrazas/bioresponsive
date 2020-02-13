import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/CallToAction/call_to_action.dart';
import 'package:portfolio_app/widgets/course_detail.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox( height: 100.0 ),
        CallToAction('Join Course'),
      ],
    );
  }
}