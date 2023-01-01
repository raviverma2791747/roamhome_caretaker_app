import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

flatButton(buttonText, buttonFunction, {
  leadingIcon : null,
  bgColor : primaryColor,
  subText : null,
  textColor : lightTextColor
}) {
  return InkWell(
    onTap: buttonFunction,
    child: Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(5)),
      child: Wrap(
        spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
        leadingIcon != null ? leadingIcon : Container(width: 0, height: 0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 16,fontWeight: FontWeight.w600),
            ),
            subText != null  ?  Text(
              subText,
              style:  TextStyle(color: textColor, fontSize: 8,fontWeight: FontWeight.w400),
            ) : SizedBox()
          ],
        )
      ]),
    ),
  );
}

/*TextButton(
style: TextButton.styleFrom(
primary: Colors.white,
backgroundColor: primaryColor,
padding: const EdgeInsets.symmetric(vertical: 15)),
onPressed: () {
Navigator.of(context).push(MaterialPageRoute(
builder: (context) => const Login()));
},
child: const SizedBox(
width: double.infinity,
child:
Text("Continue", textAlign: TextAlign.center)))*/
