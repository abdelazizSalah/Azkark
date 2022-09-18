import 'package:azkark/Screens/HomePage.dart';
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
    final double fontFactor = MediaQuery.of(context).textScaleFactor;
    final Orientation devOrientation = MediaQuery.of(context).orientation;
    return Directionality(
      textDirection: HomePage.languageChoice == false
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Container(
          color: Theme.of(context).hintColor,
          child: Card(
            color: Theme.of(context).primaryColor,
            elevation: 10,
            shadowColor: Theme.of(context).accentColor,
            child: Container(
              /// Main Container
              decoration: BoxDecoration(
                  color: Theme.of(context).errorColor,
                  border: Border.all(
                      width: 2.5, color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Padding(
                    /// Title widget
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title,
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                  Container(
                    /// El Zekr Container
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
                    //// Space Box
                    ///
                    height: 10,
                  ),
                  Container(
                    /// El Fayda Container
                    ///
                    // height: constrains.maxHeight * 0.06,
                    margin: EdgeInsets.only(top: 5, right: 30, left: 10),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      fayda,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).splashColor,
                          fontSize: 16 * fontFactor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Stack(alignment: AlignmentDirectional.bottomStart, children: [
                    Container(
                      // /// Button Container

                      width: devOrientation == Orientation.landscape
                          ? MediaQuery.of(context).size.width * 0.27
                          : MediaQuery.of(context).size.width * 0.5,
                      height: devOrientation == Orientation.landscape
                          ? MediaQuery.of(context).size.height * 0.27
                          : MediaQuery.of(context).size.height * 0.15,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(counter == 0
                              ? Theme.of(context).hoverColor
                              : Theme.of(context).splashColor),
                        ),
                        onPressed: decrementCounter,
                        child: Text(
                          /// Counter container
                          counter.toString(),
                          style: TextStyle(
                              fontFamily: 'DS-Digital',
                              height: 1,
                              fontSize: 50,
                              shadows: [
                                Shadow(
                                    blurRadius: 10,
                                    color: Colors.grey,
                                    offset: Offset(0, 30))
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      /// Icon Container
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: IconButton(
                        icon: Icon(
                          Icons.restart_alt,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: resetCounter,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          )),
    );
  }
}
