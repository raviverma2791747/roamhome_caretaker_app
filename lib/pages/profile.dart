import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/list_item.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roamhome_caretaker_app/pages/about.dart';
import 'package:roamhome_caretaker_app/pages/help.dart';
import 'package:roamhome_caretaker_app/components/bottom_navigation_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:roamhome_caretaker_app/redux/actions.dart';
import 'package:roamhome_caretaker_app/redux/store.dart';
import 'package:roamhome_caretaker_app/redux/app.state.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(color: primaryTextColor),
              title: Text(
                "Profile",
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
            backgroundColor: secondaryBgColor,
            body: SafeArea(
                top: true,
                child: Stack(
              children: [
                SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(0, 0, 0,  90),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            color: primaryBgColor,
                            padding: EdgeInsets.only(top: 40, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:
                                          Color.fromRGBO(217, 217, 217, 1),
                                      child: const Text(''),
                                      radius: 50,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Babra Junta",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(63, 67, 74, 1)),
                                    ),
                                    Text("236 tasks, 700 hours",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                129, 127, 127, 1))),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text("4.5",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    63, 67, 74, 1))),
                                        Icon(
                                          Icons.star,
                                          color: accentColor,
                                          size: 16.0,
                                          semanticLabel:
                                              'Text to announce in accessibility modes',
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                listItem(
                                    "Availability",
                                    StoreConnector<AppState, dynamic>(
                                        converter: (store) => store.state,
                                        builder: (context, state) =>
                                            FlutterSwitch(
                                              activeColor: primaryColor,
                                              width: 50.0,
                                              height: 25.0,
                                              toggleSize: 20.0,
                                              value: state.available,
                                              borderRadius: 30.0,
                                              onToggle: (val) {
                                                store.dispatch(
                                                    AvailableAction(val));
                                              },
                                            ))),
                                listItem(
                                    "Language",
                                    Icon(
                                      Icons.chevron_right,
                                      color: primaryTextColor,
                                      size: 30.0,
                                      semanticLabel: 'Chevron Right',
                                    ), onPress: () {
                                  Navigator.of(context)
                                      .pushNamed(languageRoute);
                                }),
                                listItem(
                                    "Help and Support",
                                    Icon(
                                      Icons.chevron_right,
                                      color: primaryTextColor,
                                      size: 30.0,
                                      semanticLabel: 'Chevron Right',
                                    ), onPress: () {
                                  Navigator.of(context).pushNamed(helpRoute);
                                }),
                                listItem(
                                    "About Us",
                                    Icon(
                                      Icons.chevron_right,
                                      color: primaryTextColor,
                                      size: 30.0,
                                      semanticLabel: 'Chevron Right',
                                    ), onPress: () {
                                  Navigator.of(context).pushNamed(aboutRoute);
                                }),
                              ],
                            ),
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: primaryColor,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 30)),
                              onPressed: () {},
                              child: const SizedBox(
                                  child: Text("Sign out",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      )))),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "V1.0",
                            style: TextStyle(
                                color: primaryTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: const BottomNavigationBarMount())
              ],
            )));
  }
}
