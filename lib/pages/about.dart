import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roamhome_caretaker_app/components/list_item.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

import '../constants/router_constants.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBgColor,
      appBar: // here the desired height
          AppBar(
        iconTheme: IconThemeData(
          color: primaryTextColor, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "About Us",
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
            physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
            child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 60),
              child: Text(
                  "Roamhome is a Vacation Rental Management Company that specializes in marketing, housekeeping and technology solutions for short term rental. We started with a vision to help homeowners make the most out of their holiday homes and at the same time, open their homes to like minded travelers from across the world. A year later, Roamhome has holiday homes, ranging from farm cottages amidst goan paddy fields to sea-facing luxury villas perched on hill tops, from budget beachside apartments to a unique set of villas, luxury boats, palaces, castles and tree houses in Goa, Rajasthan, Kerala, Karnataka, Tamil Nadu, Himachal Pradesh, Uttarakhand and Maharashtra.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 12,
                      color: Color.fromRGBO(129, 127, 127, 1))),
            ),
            listItem("Roamhome Website",
                SvgPicture.asset("assets/images/icons/open_in_new.svg"))
          ],
        ),
      )),
    ));
  }
}
