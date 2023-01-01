import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

navigationButton(buttonText, buttonIcon, buttonFunction , {active = false}){
  return InkWell(
      splashColor: const Color.fromRGBO(0, 0, 0, 1),
      hoverColor: const Color.fromRGBO(0, 0, 0, 1),
      focusColor: const Color.fromRGBO(0, 0, 0, 1),
      borderRadius: BorderRadius.circular(120),
      onTap: buttonFunction,
    child: Container(
      decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(12)),),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          buttonIcon,
          color: active ? primaryColor : secondaryTextColor,
          size: 25,
        ),
      Text(
          buttonText,
          style: TextStyle(
              color:  active ? primaryColor : secondaryTextColor,
              fontSize: 8,
              fontWeight: FontWeight.w500),
         )
      ]),
    )
  );
}