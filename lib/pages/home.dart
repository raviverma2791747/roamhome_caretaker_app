import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/bottom_navigation_bar.dart';
import 'package:roamhome_caretaker_app/components/task_item.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../constants/router_constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _taskItems = List.filled(10, {
    "propertyName": "Baldome Estate",
    "address": "Nerolac House, Ganpatrao Kadam Marg, Lower Parel",
    "bedrooms": "4",
    "bathrooms": "3",
    "distance": "1.1",
    "time": "10:30am",
    "duration": "50mins"
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          backgroundColor: primaryBgColor,
          actionsIconTheme: IconThemeData(color: primaryTextColor),
          elevation: 1,
          title: Padding(
              padding: EdgeInsets.only(left: 5),
              child: RichText(
                textScaleFactor: 1.0,
                text: TextSpan(
                    text: "Welcome muric 👋\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                          text: "Here are your tasks for today\n",
                          style: TextStyle(
                              height: 1.6,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16)),
                      TextSpan(
                          text: DateFormat('d MMMM, y').format(DateTime.now()),
                          style: TextStyle(color: primaryColor, fontSize: 8))
                    ]),
              )),
          actions: [
            IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {
                  Navigator.pushNamed(context, notificationRoute);
                },
                padding: EdgeInsets.only(right: 20),
                icon: Icon(Icons.notifications_outlined)),
          ],
        ),*/
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 1,
                backgroundColor: primaryBgColor,
                flexibleSpace: SafeArea(
                  top: true,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    color: primaryBgColor,
                    child: Row(mainAxisSize: MainAxisSize.max, children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Welcome muric 👋",
                              textScaleFactor: 1.0,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            Flexible(
                                child: Text("Here are your tasks for today",
                                    textScaleFactor: 1.0,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16))),
                            Text(DateFormat('d MMMM, y').format(DateTime.now()),
                                textScaleFactor: 1.0,
                                style:
                                    TextStyle(color: primaryColor, fontSize: 8))
                          ],
                        ),
                      ),
                      IconButton(
                          alignment: Alignment.centerRight,
                          onPressed: () {
                            Navigator.pushNamed(context, notificationRoute);
                          },
                          icon: Icon(Icons.notifications_outlined))
                    ]),
                  ),
                ))),
        body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Container(
                  child: _taskItems.length == 0
                      ? Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/no_schedule.svg',
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: MediaQuery.of(context).size.width * 0.3,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(height: 20),
                              const Text("No Schedule Today",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: primaryTextColor)),
                              Text(
                                  "No Schedule Today Currently you don’t have any schedule. Please check back later.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: secondaryTextColor))
                            ],
                          )))
                      : ListView.builder(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 90),
                          physics: const BouncingScrollPhysics(),
                          itemCount: _taskItems.length,
                          itemBuilder: (context, idx) {
                            return taskItem(_taskItems[idx], () {
                              Navigator.of(context).pushNamed(detailRoute);
                            }, enabled: idx == 0);
                          }),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: const BottomNavigationBarMount())
              ],
            )));
  }
}
