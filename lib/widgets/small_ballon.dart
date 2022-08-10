import 'package:flutter/material.dart';

class SmallBalloon extends StatelessWidget {
  const SmallBalloon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 214, 59, 162),
        border: Border.all(color: Colors.white, width: 10),
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }
}
