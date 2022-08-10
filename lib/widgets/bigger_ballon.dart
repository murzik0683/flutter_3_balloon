import 'package:flutter/material.dart';

class BiggerBalloon extends StatelessWidget {
  const BiggerBalloon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(),
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }
}
