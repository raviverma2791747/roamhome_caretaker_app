import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:roamhome_caretaker_app/pages/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Language extends StatefulWidget {
  final init;

  const Language({Key? key, this.init: false}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBgColor,
        appBar: !widget.init
            ? AppBar(
                iconTheme: IconThemeData(
                  color: primaryTextColor, //change your color here
                ),
                backgroundColor: Colors.white,
                elevation: 1,
                title: Text("Change language",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(63, 67, 74, 1),
                        fontWeight: FontWeight.w600)),
                actions: [
                  IconButton(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      onPressed: () {
                        Navigator.pushNamed(context, notificationRoute);
                      },
                      icon: Icon(Icons.notifications_outlined))
                ],
              )
            : null,
        body: SafeArea(
            top: true,
            child: SingleChildScrollView(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          "Which language do you prefer?",
                          style: TextStyle(color: primaryTextColor),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/india.svg',
                              width: 80,
                              height: 120,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Hindi",
                              style: TextStyle(color: primaryTextColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/usa.svg',
                              width: 80,
                              height: 120,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "English",
                              style: TextStyle(color: primaryTextColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        flatButton(widget.init ? "Continue" : "Save", () {
                           widget.init ? Navigator.of(context).pushNamed(loginRoute) : Navigator.of(context).pop()  ;
                        })
                      ],
                    )))));
  }
}
