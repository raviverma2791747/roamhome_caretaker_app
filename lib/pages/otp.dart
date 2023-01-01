import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/pages/home.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);



  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {



  @override
  Widget build(BuildContext context) {


    return Scaffold(
            backgroundColor: primaryBgColor,
            body: SafeArea(
                top: true,
                child:Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                child: Column(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Verify",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: primaryTextColor,
                              fontSize: 30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Please type the verification code sent to 0964731294",
                          style: TextStyle(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                                child: TextField(
                              autofocus: true,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                                child: TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                                child: TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                                child: TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            )),
                          ],
                        )
                      ],
                    )),
                    Column(
                      children: [
                        flatButton("Confirm", () {
                          Navigator.of(context).pushNamed(homeRoute);
                        }),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Re-send code in  ",
                            style: TextStyle(
                                fontSize: 16, color: primaryTextColor),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '0:02',
                                  style: TextStyle(color: primaryColor)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))));
  }
}
