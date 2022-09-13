import 'package:flutter/material.dart';
import 'package:rolling_switch/rolling_switch.dart';

class SwitchButtonCard extends StatefulWidget {
  final title;

  SwitchButtonCard({required this.title});

  @override
  State<SwitchButtonCard> createState() => _SwitchButtonCardState();
}

class _SwitchButtonCardState extends State<SwitchButtonCard> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}
