import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:dotted_border/dotted_border.dart'
    '';

class TaskAccordionItem extends StatefulWidget {
  final String title;
  final String content;
  final bool enabled;

  const TaskAccordionItem(
      {Key? key,
      required this.title,
      required this.content,
      required this.enabled})
      : super(key: key);
  @override
  State<TaskAccordionItem> createState() => _TaskAccordionItemState();
}

class _TaskAccordionItemState extends State<TaskAccordionItem> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryBgColor,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        InkWell(
          onTap: () {
            setState(() {
              _showContent = !_showContent;
            });
          },
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Icon(
                      _showContent
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: primaryTextColor),
                  Expanded(
                      child: Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: secondaryTextColor),
                  )),
                  Icon(
                    Icons.check_circle_rounded,
                    color: successColor,
                  )
                ],
              )),
        ),
        _showContent
            ? Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  children: [
                    Divider(),
                    Text(
                      widget.content,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: secondaryTextColor),
                    ),
                    Column(
                      children: [
                        Divider(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                                child: Text(
                              "#lay the bed and rearrange the pillows",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: secondaryTextColor),
                            )),
                            Icon(
                              Icons.check_circle_rounded,
                              color: successColor,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                                child: Text(
                              "#lay the bed and rearrange the pillows",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: secondaryTextColor),
                            )),
                            Icon(
                              Icons.check_circle_rounded,
                              color: successColor,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                                child: Text(
                              "#lay the bed and rearrange the pillows",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: secondaryTextColor),
                            )),
                            Icon(
                              Icons.check_circle_rounded,
                              color: successColor,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Column(
                      children: [
                        widget.enabled
                            ? Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Icon(
                                      Icons.error_outline,
                                      color: accentColor,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Flexible(
                                        child: Text(
                                      "Before marking the task as completed, upload proof of work below.",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700),
                                    ))
                                  ])
                            : Container(
                                height: 0,
                                width: 0,
                              ),
                        widget.enabled
                            ? SizedBox(
                                height: 10,
                              )
                            : Container(
                                height: 0,
                                width: 0,
                              ),
                        widget.enabled
                            ? Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: [
                                  DottedBorder(
                                      dashPattern: [3],
                                      color: secondaryTextColor,
                                      radius: Radius.circular(10),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(children: [
                                          Icon(
                                            Icons.add,
                                            color: secondaryTextColor,
                                          ),
                                          Text(
                                            "tap to upload photo",
                                            style: TextStyle(
                                                color: secondaryTextColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 6),
                                          )
                                        ]),
                                      )),
                                  DottedBorder(
                                      dashPattern: [3],
                                      color: secondaryTextColor,
                                      radius: Radius.circular(10),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(children: [
                                          Icon(
                                            Icons.add,
                                            color: secondaryTextColor,
                                          ),
                                          Text(
                                            "tap to upload photo",
                                            style: TextStyle(
                                                color: secondaryTextColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 6),
                                          )
                                        ]),
                                      )),
                                  DottedBorder(
                                      dashPattern: [3],
                                      color: secondaryTextColor,
                                      radius: Radius.circular(10),
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(children: [
                                          Icon(
                                            Icons.add,
                                            color: secondaryTextColor,
                                          ),
                                          Text(
                                            "tap to upload photo",
                                            style: TextStyle(
                                                color: secondaryTextColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 6),
                                          )
                                        ]),
                                      ))
                                ],
                              )
                            : Wrap(
                                spacing: 10,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showGeneralDialog(
                                            context: context,
                                            // should dialog be dismissed when tapped outside// label for barrier
                                            transitionDuration: Duration(
                                                milliseconds:
                                                    100), // how long it takes to popup dialog after button click
                                            pageBuilder: (_, __, ___) {
                                              return BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 3, sigmaY: 3),
                                                  child: SafeArea(
                                                      top: true,
                                                      child: Scaffold(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          body: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    20),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundColor:
                                                                        primaryBgColor,
                                                                    child: IconButton(
                                                                        onPressed: () {
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                        icon: Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              primaryTextColor,
                                                                          size:
                                                                              20,
                                                                        ))),
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          "assets/images/instruction1.png"),
                                                                    )),
                                                              ],
                                                            ),
                                                          ))));
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  "assets/images/instruction1.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      )),
                                  InkWell(
                                      onTap: () {
                                        showGeneralDialog(
                                            context: context,
                                            // should dialog be dismissed when tapped outside// label for barrier
                                            transitionDuration: Duration(
                                                milliseconds:
                                                    100), // how long it takes to popup dialog after button click
                                            pageBuilder: (_, __, ___) {
                                              return BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 3, sigmaY: 3),
                                                  child: SafeArea(
                                                      top: true,
                                                      child: Scaffold(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          body: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    20),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundColor:
                                                                        primaryBgColor,
                                                                    child: IconButton(
                                                                        onPressed: () {
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                        icon: Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              primaryTextColor,
                                                                          size:
                                                                              20,
                                                                        ))),
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          "assets/images/instruction1.png"),
                                                                    )),
                                                              ],
                                                            ),
                                                          ))));
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  "assets/images/instruction1.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      )),
                                  InkWell(
                                      onTap: () {
                                        showGeneralDialog(
                                            context: context,
                                            // should dialog be dismissed when tapped outside// label for barrier
                                            transitionDuration: Duration(
                                                milliseconds:
                                                    100), // how long it takes to popup dialog after button click
                                            pageBuilder: (_, __, ___) {
                                              return BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 3, sigmaY: 3),
                                                  child: SafeArea(
                                                      top: true,
                                                      child: Scaffold(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          body: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    20),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundColor:
                                                                        primaryBgColor,
                                                                    child: IconButton(
                                                                        onPressed: () {
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                        icon: Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              primaryTextColor,
                                                                          size:
                                                                              20,
                                                                        ))),
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          "assets/images/instruction1.png"),
                                                                    )),
                                                              ],
                                                            ),
                                                          ))));
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  "assets/images/instruction1.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      )),
                                ],
                              )
                      ],
                    )
                  ],
                ),
              )
            : Container()
      ]),
    );
  }
}

class TaskAccordion extends StatefulWidget {
  final List data;
  final bool enabled;

  const TaskAccordion({Key? key, required this.data, required this.enabled})
      : super(key: key);
  @override
  _TaskAccordionState createState() => _TaskAccordionState();
}

class _TaskAccordionState extends State<TaskAccordion> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: List<TaskAccordionItem>.generate(
          widget.data.length,
          (index) => TaskAccordionItem(
                title: widget.data[index]["title"],
                content: widget.data[index]["content"],
                enabled: widget.enabled,
              )),
    ));
  }
}
