import 'package:flutter/material.dart';
import '../Zekr.dart';

class AzkarContainer extends StatefulWidget {
  final azkary;
  const AzkarContainer({required this.azkary});

  @override
  State<AzkarContainer> createState() => _AzkarContainerState();
}

class _AzkarContainerState extends State<AzkarContainer> {
  @override
  Widget build(BuildContext context) {
    final azkary = widget.azkary;

    return Container(
        color: Colors.green[300],
        child: Card(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return Zekr(
              counter: azkary[index]['counter'],
              zekr: azkary[index]['zekr'],
              title: azkary[index]['title'],
              fayda: azkary[index]['fadl'],
              decrementCounter: () {
                setState(() {
                  if (azkary[index]['counter'] != 0)
                    azkary[index]['counter'] =
                        (azkary[index]['counter'] as int) - 1;
                });
              },
              resetCounter: () {
                setState(() {
                  azkary[index]['counter'] = azkary[index]['initial'] as int;
                });
              },
            );
          },
          itemCount: azkary.length,
        )));
  }
}
