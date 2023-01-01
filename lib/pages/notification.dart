import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/notification_item.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  final _notificationItems = List.filled(10, {
    "title": "New schedule",
    "desc":
        "You have new house cleaning schedule, click here to view the details",
    "time": "5th June, 2022   9:23am"
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: // here the desired height
              AppBar(
                iconTheme: const IconThemeData(
                  color: primaryTextColor, //change your color here
                ),
                backgroundColor: primaryBgColor,
                elevation: 1,
                title: const Text(
                  "Notifications",
                  style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                actions: [
                  TextButton(
                      onPressed: () {},
                      child: const Text("Mark all read",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w500))),
                  SizedBox(width: 20,)
                ],
              ),
          backgroundColor: secondaryBgColor,
          body: SafeArea(
            top: true,
            child:Container(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 5),
                physics: const BouncingScrollPhysics(),
                itemCount: _notificationItems.length,
                itemBuilder: (context, idx) {
                  return notificationItem(
                      _notificationItems[idx]["title"],
                      _notificationItems[idx]["desc"],
                      _notificationItems[idx]["time"]);
                }),
          ),
        ));
  }
}
