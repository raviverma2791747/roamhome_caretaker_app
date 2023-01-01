import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';
import 'package:roamhome_caretaker_app/components/high_priority_pill.dart';
import 'package:roamhome_caretaker_app/components/task_accordion.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

class HistoryDetail extends StatefulWidget {
  const HistoryDetail({Key? key}) : super(key: key);

  @override
  State<HistoryDetail> createState() => _HistoryDetailState();
}

class _HistoryDetailState extends State<HistoryDetail> {
  bool _taskStarted = false;

  final _taskItems = List.filled(10, {
    "title": "#Clean the livingroom",
    "content":
        "Lay the bed spread in the bedroom, put the dirty clothes in the basket into the washing machine in the toilet, rearrange the table and clean up the desk. Don’t forget to sweep and mop the floor."
  });

  bool _taskCompleted = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                  iconTheme: IconThemeData(color: primaryTextColor),
                  backgroundColor: primaryBgColor,
                  automaticallyImplyLeading: false,
                  elevation: 1,
                  flexibleSpace: SafeArea(top:true,child:Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.arrow_back)),
                          Expanded(
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Baldome Estate",
                                  textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "Lower Parel, Delhi",
                                        textScaleFactor: 1.0,
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                                PriorityPill(enabled: true, textScaleFactor: 1.0)
                              ]))
                        ],
                      ))))),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.only(top: 5, bottom: 50),
              child: Container(
                child: Column(children: [
                  Container(
                      color: primaryBgColor,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      child: IntrinsicHeight(
                          child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryLightColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: SvgPicture.asset(
                                    "assets/images/icons/not_started.svg"),
                              ),
                              Flexible( child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                      child: Text(
                                    "10:30am",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromRGBO(132, 134, 136, 1)),
                                  )),
                                  Flexible(
                                    child: Text("Start",
                                        style: TextStyle(
                                            fontSize: 6,
                                            color: Color.fromRGBO(
                                                132, 134, 136, 1))),
                                  )
                                ],
                              ))
                            ],
                          )),
                          Container(
                            width: 0.5,
                            color: secondaryTextColor,
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryLightColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.stop_circle_outlined,
                                  color: primaryColor,
                                  size: 20,
                                ),
                              ),
                              Flexible( child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                        child: Text(
                                      "12:30pm",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(132, 134, 136, 1)),
                                    )),
                                    Flexible(
                                        child: Text(
                                      "Finish",
                                      style: TextStyle(
                                          fontSize: 6,
                                          color:
                                              Color.fromRGBO(132, 134, 136, 1)),
                                    ))
                                  ]))
                            ],
                          ))
                        ],
                      ))),
                  Container(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "Date",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(129, 127, 127, 1)),
                              )),
                              Expanded(
                                  child: Text("5th June, 2022",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 12,
                                      )))
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "Full Address",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(129, 127, 127, 1)),
                              )),
                              Expanded(
                                  child: Text(
                                      "Nerolac House, Ganpatrao Kadam Marg, Lower Parel",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 12,
                                      )))
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "House Details",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(129, 127, 127, 1)),
                              )),
                              Expanded(
                                  child: Text("3bedrooms/2 bathrooms",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 12,
                                      )))
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "House Owner",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(129, 127, 127, 1)),
                              )),
                              Expanded(
                                  child: Text("Rudra Patra",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 12,
                                      )))
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "Cleaning duration",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(129, 127, 127, 1)),
                              )),
                              Expanded(
                                  child: Text("50mins",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 12,
                                      )))
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "Rating",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(129, 127, 127, 1)),
                              )),
                              Expanded(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("4",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontSize: 12,
                                          )),
                                      Icon(
                                        Icons.star,
                                        color: accentColor,
                                        size: 12,
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ],
                      )),
                  TaskAccordion(
                    data: _taskItems,
                    enabled: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      color: primaryBgColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Schedule Progress",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: secondaryTextColor),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: LinearPercentIndicator(
                                padding: EdgeInsets.zero,
                                lineHeight: 20.0,
                                percent: 0.7,
                                center: Text(
                                  "70.0%",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: lightTextColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                barRadius: Radius.circular(10),
                                backgroundColor: Colors.grey[300],
                                progressColor: primaryColor,
                              )),
                        ],
                      ))
                ]),
              )),
        ));
  }
}
