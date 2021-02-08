import 'main.dart';
import 'package:flutter/material.dart';

// class for  all the containers drawn/painted on the body
class Cards extends StatelessWidget {
  const Cards({this.path});
  final Widget path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: path,
      width: 200,
      height: 170,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: container_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
