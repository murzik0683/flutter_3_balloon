import 'package:flutter/material.dart';

class SmallBalloonColor extends StatelessWidget {
  final Color color;
  final String title;

  const SmallBalloonColor({Key? key, required this.color, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.white, width: 5),
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
