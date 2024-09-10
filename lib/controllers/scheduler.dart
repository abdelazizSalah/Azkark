// import 'package:azkark/Screens/HomePage.dart';
// import 'package:flutter/material.dart';
// // import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:cron/cron.dart';

// List<String> Dailyzekr = [
//   "سبحان الله",
//   "الله اكبر",
//   "صلوا علي النبي",
//   "الحمدلله علي كل النعم التي لا تٌعد"
// ];
// List<String> fridayzekr = [
//   "سبحان الله",
//   "الله اكبر",
//   "صلوا علي النبي",
//   "لا تنسوا الدعاء"
// ];
// final cron = Cron();
// int frequncy = HomePage.freq;

// void changeFrequency(int choice) {

//   if (choice == 3)
//     frequncy = 5;
//   else
//     frequncy = choice;

// }

// void fridayZekrActivate() {
//   AwesomeNotifications().initialize(
//       null, // icon for your app notification
//       [
//         NotificationChannel(
//             channelKey: 'key1',
//             channelName: 'Proto Coders Point',
//             channelDescription: "Notification example",
//             defaultColor: Color(0XFF9050DD),
//             ledColor: Colors.white,
//             playSound: true,
//             enableLights: true,
//             enableVibration: true)
//       ]);
//   int i = 0;
//   cron.schedule(
//       Schedule.parse('* 0 */1 * * 7'),
//       () async => {
//             //Every hour on friday;
//             await AwesomeNotifications().createNotification(
//                 content: NotificationContent(
//                     id: 1,
//                     channelKey: 'key1',
//                     title: 'يوم الجمعة',
//                     body: fridayzekr[i])),
//             i = (i + 1) % 4
//           });
// }

// void DailyZekrActivate() {
//   AwesomeNotifications().initialize(
//       null, // icon for your app notification
//       [
//         NotificationChannel(
//             channelKey: 'key2',
//             channelName: 'Proto Coders Point',
//             channelDescription: "Notification example",
//             defaultColor: Color(0XFF9050DD),
//             ledColor: Colors.white,
//             playSound: true,
//             enableLights: true,
//             enableVibration: true)
//       ]);
//   int i = 0;
//   String freq = frequncy.toString();
//   cron.schedule(
//       Schedule.parse("0 */$freq * * *"),
//       () async => {
//             //Every hour on friday;
//             await AwesomeNotifications().createNotification(
//                 content: NotificationContent(
//                     id: 2,
//                     channelKey: 'key2',
//                     title: 'الذكر',
//                     body: Dailyzekr[i])),
//             i = (i + 1) % 4
//           });
// }
