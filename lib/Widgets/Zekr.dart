import 'dart:math';

import 'package:flutter/material.dart';

class Zekr extends StatelessWidget {
  final darkMood;
  final zekr;
  final title;
  final fayda;
  final counter;
  final decrementCounter;
  final resetCounter;
  const Zekr({
    required this.zekr,
    required this.darkMood,
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
        color: Theme.of(context).hintColor,

        // color: Theme.of(context).splashColor,
        child: Card(
          // color: Theme.of(context).splashColor,
          color: Theme.of(context).primaryColor,

          // color: Colors.grey,
          elevation: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).errorColor,
                border:
                    Border.all(width: 3, color: Theme.of(context).accentColor),
                borderRadius: BorderRadius.circular(50)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title,
                      style: Theme.of(context).textTheme.titleSmall),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      border: Border.all(
                          width: 1.0, color: Theme.of(context).accentColor)),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Text(
                    "$zekr",
                    style: Theme.of(context).textTheme.bodySmall,
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
                        backgroundColor: MaterialStatePropertyAll(counter == 0
                            ? Theme.of(context).hoverColor
                            : Theme.of(context).splashColor),
                      ),
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
