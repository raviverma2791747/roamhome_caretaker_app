import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';
import 'package:roamhome_caretaker_app/components/high_priority_pill.dart';
import 'package:roamhome_caretaker_app/components/task_accordion.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
        /*appBar: AppBar(
          iconTheme: IconThemeData(color: primaryTextColor),
          leadingWidth: 20,
          backgroundColor: primaryBgColor,
          elevation: 1,
          toolbarHeight: 80,
          title: Padding(
              padding: EdgeInsets.only(left: 5),
              child: RichText(
                textScaleFactor: 1.0,
                text: TextSpan(
                    text: "Baldome Estate\n",
                    style: TextStyle(
                        height: 1.6,
                        color: primaryTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                    children: [
                      TextSpan(
                        text: "Lower Parel, Delhi",
                        style:
                            TextStyle(fontSize: 10, color: secondaryTextColor),
                      )
                    ]),
              )),
          actions: [
            PriorityPill(
              enabled: true,
              textScaleFactor: 1.0,
            )
          ],
        ),*/

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
                                  Flexible(
                                      child: Text(
                                    "Baldome Estate",
                                    textScaleFactor: 1.0,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  )),
                                  Flexible(
                                      child: Text(
                                    "Lower Parel, Delhi",
                                    textScaleFactor: 1.0,
                                    style: TextStyle(fontSize: 10),
                                  ))
                                ],
                              ),
                              PriorityPill(
                                enabled: true,
                                textScaleFactor: 1.0,
                              )
                            ]))
                      ],
                    ))))),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                child: Column(children: [
                  Container(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(20),
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
                                child: Icon(
                                  Icons.calendar_month,
                                  color: primaryColor,
                                  size: 20,
                                ),
                              ),
                              Flexible(
                                  child: Text(
                                "5th June, 2022",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(132, 134, 136, 1)),
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
                                  Icons.schedule,
                                  color: primaryColor,
                                  size: 20,
                                ),
                              ),
                              Flexible(
                                  child: Text(
                                "5th June, 2022",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(132, 134, 136, 1)),
                              ))
                            ],
                          ))
                        ],
                      ))),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: flatButton("Direction to Address", () {},
                          leadingIcon: SvgPicture.asset(
                              "assets/images/icons/near_me.svg"))),
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
                        ],
                      )),
                  TaskAccordion(
                    data: _taskItems,
                    enabled: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      color: primaryBgColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child:
                          flatButton(!_taskStarted ? "Start Task" : "Stop Task",
                              subText: _taskStarted ? "1h:23mins:43secs" : null,
                              leadingIcon: _taskStarted
                                  ? Icon(
                                      Icons.stop_circle_outlined,
                                      size: 30,
                                      color: lightTextColor,
                                    )
                                  : null, () {
                        if (_taskStarted) {
                          showModalBottomSheet(
                              context: context,
                              //background color for modal bottom screen
                              backgroundColor: Colors.transparent,
                              //elevates modal bottom screen
                              elevation: 10,
                              // gives rounded corner to modal bottom screen

                              builder: (context) {
                                // UDE : SizedBox instead of Container for whitespaces
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter
                                            setState /*You can rename this!*/) {
                                  return BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                    child:Container(

                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: primaryBgColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child:  SingleChildScrollView(
                                        child:  _taskCompleted
                                          ? Container(
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.check_circle_rounded,
                                                  color: successColor,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.10,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Tasks Completed",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                flatButton("Next Schedule",
                                                    bgColor: successColor, () {
                                                  setState(() {
                                                    _taskCompleted = true;
                                                    Navigator.pop(context);
                                                    Navigator.pop(context);
                                                  });
                                                })
                                              ],
                                            ))
                                          : Container(
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                            child:Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.error,
                                                  color: successColor,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.10,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Completed all Tasks?",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18),
                                                ),
                                                Text(
                                                  "Check to confirm you have completed all your tasks before stopping the task. stopping task will mark all job as completed",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                flatButton("Confirm", () {
                                                  setState(() {
                                                    _taskCompleted = true;
                                                    //Navigator.pop(context);
                                                  });
                                                }, bgColor: successColor),
                                                flatButton("Cancel", () {
                                                  Navigator.pop(context);
                                                },
                                                    textColor: primaryTextColor,
                                                    bgColor: Colors.transparent)
                                              ],
                                            )),
                                    )),
                                  );
                                });
                              });
                        } else {
                          setState(() {
                            _taskStarted = true;
                          });
                        }
                      }))
                ]),
              )),
        ));
  }
}
