import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/bottom_navigation_bar.dart';
import 'package:roamhome_caretaker_app/components/task_history_item.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';


import '../constants/router_constants.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final _historyItems = List.filled(10, {
    "propertyName": "Mr. Lawal House",
    "address": "Nerolac House, Ganpatrao Kadam Marg, Lower Parel",
    "date": "5th June, 2022",
    "duration": "10:30am - 12:30pm"
  });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: secondaryBgColor,
            appBar: AppBar(
              iconTheme: IconThemeData(color: primaryTextColor),
              title: Text(
                "History",
                style: TextStyle(
                    color: primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              elevation: 1,
              backgroundColor: primaryBgColor,
              actions: [
                IconButton(
                  padding: EdgeInsets.only(right: 20),
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pushNamed(context, notificationRoute);
                    },
                    icon: Icon(Icons.notifications_outlined))
              ],
            ),
            body: SafeArea(
              top: true,
    child: Stack(
              children: [
                ListView.builder(
                    padding: EdgeInsets.only(top:5,left:10,right: 10,bottom: 90),
                    physics: const BouncingScrollPhysics(),
                    itemCount: _historyItems.length,
                    itemBuilder: (context, idx) {
                      return taskHistoryItem(_historyItems[idx],() {
                        Navigator.of(context).pushNamed(historyDetailRoute);

                      });
                    }),
                const Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomNavigationBarMount())
              ],
            )));
  }
}
