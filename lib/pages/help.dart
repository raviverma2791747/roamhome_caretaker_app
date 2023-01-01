import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';
import 'package:roamhome_caretaker_app/components/list_item.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/router_constants.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Help and Support",
          style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(63, 67, 74, 1),
              fontWeight: FontWeight.w600),
        ),
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
        child: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Text(
                    "You need help, chat with us on whatsapp",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  flatButton(
                    "Chat With Us",
                    () {},
                    bgColor: successColor,
                    leadingIcon: Icon(
                      Icons.whatsapp,
                      color: lightTextColor,
                    ),
                  )
                ])),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: primaryBgColor),
              child: Column(
                children: [
                  listItem("Facebook",
                      SvgPicture.asset("assets/images/icons/open_in_new.svg")),
                  listItem("Twitter",
                      SvgPicture.asset("assets/images/icons/open_in_new.svg")),
                  listItem("Instagram",
                      SvgPicture.asset("assets/images/icons/open_in_new.svg")),
                ],
              ),
            )
          ],
        ),
      )),
    ));
  }
}
