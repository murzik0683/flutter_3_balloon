import 'package:flutter/material.dart';
import 'package:flutter_3_balloon/widgets/bigger_ballon.dart';
import 'package:flutter_3_balloon/widgets/small_ballon.dart';
import 'package:flutter_3_balloon/widgets/small_ballon_color.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: const Text("Шарики"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(children: [
          const Positioned(
              bottom: 100,
              left: 50,
              height: 100,
              width: 100,
              child: SmallBalloon()),
          const Align(alignment: Alignment(0.7, 0.1), child: SmallBalloon()),
          const Align(alignment: Alignment(-0.9, 0.1), child: SmallBalloon()),
          const Align(alignment: Alignment(-0.8, -0.5), child: BiggerBalloon()),
          const Align(alignment: Alignment(0.6, 0.6), child: BiggerBalloon()),
          const Align(alignment: Alignment(0.6, -0.6), child: SmallBalloon()),
          const Align(alignment: Alignment(0.2, -0.4), child: SmallBalloon()),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SmallBalloon(),
                  SmallBalloon(),
                  SmallBalloon(),
                  SmallBalloon(),
                  SmallBalloon(),
                ]),
            Row(
                verticalDirection: VerticalDirection.down,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SmallBalloonColor(
                    color: Colors.red,
                    title: '1',
                  ),
                  SmallBalloonColor(
                    color: Colors.yellow,
                    title: '2',
                  ),
                  SmallBalloonColor(
                    color: Colors.green,
                    title: '3',
                  ),
                  SmallBalloonColor(
                    color: Colors.blue,
                    title: '4',
                  ),
                  SmallBalloonColor(
                    color: Colors.purple,
                    title: '5',
                  ),
                ])
          ]),
        ]),
      ),
    ));
  }
}
