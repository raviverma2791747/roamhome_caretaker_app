import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/navigation_button.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

class BottomNavigationBarMount extends StatelessWidget {
  const BottomNavigationBarMount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0.5),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: primaryBgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey, width: 0.3, style: BorderStyle.solid)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: navigationButton("Home", Icons.home_outlined, () {
            Navigator.pushReplacementNamed(context, homeRoute);
          })),
          Expanded(
              child: navigationButton("History", Icons.alarm, () {
            Navigator.pushReplacementNamed(context, historyRoute);
          })),
          Expanded(
              child: navigationButton("Profile", Icons.account_circle_outlined,
                  () {
            Navigator.pushReplacementNamed(context, profileRoute);
          }))
        ],
      ),
    );
  }
}
