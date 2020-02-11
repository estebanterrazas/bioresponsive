import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 60.0, vertical: 15 ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
          color: Colors.white
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(15.0)
      ),
    );
  }
}