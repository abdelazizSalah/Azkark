import 'dart:ui';

import 'package:flutter/material.dart';

class Zekr extends StatelessWidget {
  final zekr;
  final counter;
  final decrementCounter;
  final resetCounter;
  const Zekr({
    required this.counter,
    required this.zekr,
    required this.decrementCounter,
    required this.resetCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Card(
        elevation: 100,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Text(
                "$zekr",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Stack(alignment: AlignmentDirectional.bottomStart, children: [
              Container(
                width: 200,
                height: 120,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(counter == 0
                          ? Theme.of(context).splashColor
                          : Color.fromARGB(255, 29, 124, 201))),
                  onPressed: decrementCounter,
                  child: Text(
                    counter.toString(),
                    // style: Theme.of(context).textTheme.bodyMedium),
                    style: TextStyle(
                        fontFamily: 'DS-Digital',
                        height: 1,
                        fontSize: 40,
                        shadows: [
                          Shadow(
                              blurRadius: 5,
                              color: Colors.grey,
                              offset: Offset(0, 30))
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: IconButton(
                  icon: Icon(Icons.restart_alt),
                  onPressed: resetCounter,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
