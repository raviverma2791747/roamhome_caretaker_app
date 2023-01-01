import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

listItem(text,icon,{onPress = null}){
  return  Container(
        margin: EdgeInsets.symmetric(vertical:10,horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            //border: Border.all(color: Colors.grey,width: 0.1),
            boxShadow:  [BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, 7), // changes position of shadow
            )],
            borderRadius: BorderRadius.circular(3)
        ),
        child: InkWell(
          onTap: onPress,
          child :Row(
          children: [
            Expanded(child: Text(text,style: TextStyle(
                color: Color.fromRGBO(63, 67, 74, 1),
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),)),
           icon
          ],
        )),
      );
}