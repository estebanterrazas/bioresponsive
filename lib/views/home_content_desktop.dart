import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/CallToAction/call_to_action.dart';
import 'package:portfolio_app/widgets/course_detail.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join Course'),
                    )
                  ),
                ],
              );
  }
}