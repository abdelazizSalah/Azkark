// import 'package:azkark/Widgets/CustomAppBar.dart';
// import 'package:azkark/controllers/service.dart';
// import 'package:flutter/material.dart';

// class Settings extends StatelessWidget {
//   final bool darkMode;
//   final darkModeSetter;
//   Settings({required this.darkMode, required this.darkModeSetter});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: CustomAppBar(),
//             body: GridView(
//                 scrollDirection: Axis.vertical,
//                 padding: EdgeInsets.all(10),
//                 gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                   maxCrossAxisExtent: 200,
//                   childAspectRatio: 7 / 13,
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                 ),
//                 children: [
//                   SwitchForMode(),
//                   SwitchForLanguage(),
//                 ])));
//   }
// }

// class SwitchForMode extends StatefulWidget {
//   @override
//   SwitchClass createState() => new SwitchClass();
// }

// class SwitchForLanguage extends StatefulWidget {
//   @override
//   SwitchClassForLanguages createState() => new SwitchClassForLanguages();
// }

// class SwitchClass extends State {
//   bool isSwitched = false;
//   var textValue = 'Light Mode';

//   void toggleSwitch(bool value) {
//     changeMode();
//     if (isSwitched == false) {
//       setState(() {
//         isSwitched = true;
//         textValue = 'Dark Mode';
//       });
//       print('Dark Mode');
//     } else {
//       setState(() {
//         isSwitched = false;
//         textValue = 'Light Mode';
//       });
//       print('Dark Mode');
//     }
//   }

// // final customSize = MediaQuery().textscal
//   @override
//   Widget build(BuildContext context) {
//     return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Text(
//         "Mode",
//         style: TextStyle(
//           fontSize: 22,
//         ),
//       ),
//       Transform.scale(
//           scale: 2,
//           child: Switch(
//             onChanged: toggleSwitch,
//             value: isSwitched,
//             activeColor: Colors.blue,
//             activeTrackColor: Colors.yellow,
//             inactiveThumbColor: Colors.green,
//             inactiveTrackColor: Colors.red[100],
//           )),
//       Text(
//         '$textValue',
//         style: TextStyle(fontSize: 20),
//       )
//     ]);
//   }
// }

// class SwitchClassForLanguages extends State {
//   bool isSwitched = false;
//   var textValue = 'اللغة العربية';
//   void toggleSwitch(bool value) {
//     changeLanguage();

//     if (isSwitched == false) {
//       setState(() {
//         isSwitched = true;
//         textValue = 'English';
//       });
//       print('English');
//     } else {
//       setState(() {
//         isSwitched = false;
//         textValue = 'اللغة العربية';
//       });
//       print('Arabic');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Text(
//         "Language/اللغة",
//         style: TextStyle(
//           fontSize: 22,
//         ),
//       ),
//       Transform.scale(
//           scale: 2,
//           child: Switch(
//             onChanged: toggleSwitch,
//             value: isSwitched,
//             activeColor: Colors.blue,
//             activeTrackColor: Colors.yellow,
//             inactiveThumbColor: Colors.redAccent,
//             inactiveTrackColor: Colors.orange,
//           )),
//       Text(
//         '$textValue',
//         style: TextStyle(fontSize: 20),
//       )
//     ]);
//   }
// }
