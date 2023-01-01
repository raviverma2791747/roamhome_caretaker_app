import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

notificationItem(title,desc,time){
  return  InkWell( child : Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.all(20),
    color: primaryBgColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: secondaryTextColor),),
        Text(desc,style:const TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: secondaryTextColor)),
        const SizedBox(height: 10,),
        Text(time,style:const  TextStyle(fontSize: 7,fontWeight: FontWeight.w400,color: secondaryTextColor))
      ],
    ),
  ));
}