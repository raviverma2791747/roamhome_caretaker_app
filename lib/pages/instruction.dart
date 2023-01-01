import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';

import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:roamhome_caretaker_app/pages/language.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  int _pageIndex = 0;

  final List<Widget> _instructions = [
    Container(
      child: Column(
        children: [
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/images/instruction1.png"),
                fit: BoxFit.cover),
          ))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Manage Houses",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: primaryTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The houses for cleaning during the day are displayed with priority",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(124, 124, 124, 1),
                        fontFamily: "Inter"))
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/images/instruction2.png"),
                fit: BoxFit.cover),
          ))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Notify Owners when done",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: primaryTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "You get to nofity every house owner when you’re done cleaning their house.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(124, 124, 124, 1),
                        fontFamily: "Inter"))
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBgColor,
        body: SafeArea(
            top: true,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Container(
                      height: double.maxFinite,
                      width: double.infinity,
                      child: PageView(
                        children: _instructions,
                        onPageChanged: (index) {
                          setState(() {
                            _pageIndex = index;
                          });
                        },
                      ),
                    )),
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: CarouselIndicator(
                            count: _instructions.length,
                            index: _pageIndex,
                            cornerRadius: 0,
                            width: 30,
                            height: 8,
                            activeColor: const Color.fromRGBO(255, 126, 53, 1),
                            color: const Color.fromRGBO(217, 217, 217, 1))),
                  ],
                )),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                  child: flatButton("Continue", () {
                    Navigator.of(context).pushNamed(languageRoute, arguments: true);
                  }),
                )
              ],
            ))));
  }
}
