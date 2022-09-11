import 'dart:ui';

import 'package:flutter/material.dart';

class Zekr extends StatelessWidget {
  final zekr;
  final title;
  final fayda;
  final counter;
  final decrementCounter;
  final resetCounter;
  const Zekr({
    required this.zekr,
    required this.title,
    required this.fayda,
    required this.counter,
    required this.decrementCounter,
    required this.resetCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        // color: Colors.grey,
        color: Colors.green[500],

        // color: Theme.of(context).splashColor,
        child: Card(
          // color: Theme.of(context).splashColor,
          color: Colors.green[300],

          // color: Colors.grey,
          elevation: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 232, 230, 230),
                border:
                    Border.all(width: 3, color: Theme.of(context).accentColor),
                borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Theme.of(context).accentColor, fontSize: 24),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: Theme.of(context).accentColor)),
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                    child: Text(
                      "$zekr",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 360,
                  margin: EdgeInsets.only(top: 5, right: 30, left: 10),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    fayda,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).splashColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(alignment: AlignmentDirectional.bottomStart, children: [
                  Container(
                    width: 180,
                    height: 120,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                        counter == 0
                            ? Theme.of(context).splashColor
                            : Color.fromARGB(255, 103, 162, 105),
                      )),
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
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
