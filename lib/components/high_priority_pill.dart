import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

PriorityPill({enabled : true,  textScaleFactor }){
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: 4, horizontal: 6),
    decoration: BoxDecoration(
        color: Color.fromRGBO(59, 192, 150, 0.5),
        borderRadius: BorderRadius.circular(10)),
    child: Text(
      "High Priority",
        textScaleFactor:  textScaleFactor,
      style: TextStyle(
          color: enabled ? primaryTextColor : Color.fromRGBO(0, 0, 0, 0.3),
          fontSize: 7,
          fontWeight: FontWeight.w600,

      ),
    ),
  );
}

