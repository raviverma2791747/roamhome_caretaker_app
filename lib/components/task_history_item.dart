import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

taskHistoryItem(data,onPress) {
  return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: primaryBgColor, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
          onTap: onPress,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["propertyName"],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    data["address"],
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 5,
                    children: [
                     Container(
                        width: 50,
                        height: 30,
                       decoration: BoxDecoration(
                           color: secondaryBgColor,
                         borderRadius: BorderRadius.circular(3)
                       ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            color: secondaryBgColor,
                            borderRadius: BorderRadius.circular(3)
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            color: secondaryBgColor,
                            borderRadius: BorderRadius.circular(3)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: primaryColor,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(child:Text(data["date"],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryTextColor)))
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.schedule,
                            color: primaryColor,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(child:Text(data["duration"],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryTextColor)))
                        ],
                      ),
                    ],
                  )
                ],
              )),
              SizedBox(
                width: 10,
              ),
              Container(

                child: CircularPercentIndicator(
                  radius: 40,
                  lineWidth: 3.0,
                  percent: 0.6,
                  center: new Text(
                    "10%",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  progressColor: Colors.green,
                ),
              )
            ],
          )));
}
