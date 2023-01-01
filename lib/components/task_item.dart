import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roamhome_caretaker_app/components/high_priority_pill.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';

taskItemProperty(value, icon, enabled) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        icon,
        size: 10.0,
        color: enabled ? primaryTextColor : Color.fromRGBO(0, 0, 0, 0.3),
      ),
      const SizedBox(
        width: 3,
      ),
      Text(
        value,
        style: TextStyle(
            color: enabled ? primaryTextColor : Color.fromRGBO(0, 0, 0, 0.3),
            fontSize: 8),
      )
    ],
  );
}

taskItem(data, onPress, {enabled = false}) {
  return InkWell(
      onTap: enabled ? onPress : null,
      child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          color: primaryBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          elevation: 0,
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: primaryLightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        "assets/images/icons/home_pin.svg",
                        height: 20,
                        width: 16,
                      ),
                    )),
                Flexible(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                child: Text(data["propertyName"],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: enabled
                                            ? primaryTextColor
                                            : Color.fromRGBO(0, 0, 0, 0.3),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500))),
                            enabled
                                ? const Icon(
                                    Icons.lock_open,
                                    size: 15,
                                  )
                                : const Icon(Icons.lock_outline,
                                    size: 15,
                                    color: Color.fromRGBO(0, 0, 0, 0.3))
                          ],
                        ),
                        Text(
                          data["address"],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: enabled
                                  ? primaryTextColor
                                  : Color.fromRGBO(0, 0, 0, 0.3),
                              fontSize: 8),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //alignment: WrapAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 5,
                                  child: Wrap(
                                spacing: 3,
                                children: [
                                  taskItemProperty(data["bedrooms"],
                                      Icons.bed_outlined, enabled),
                                  taskItemProperty(data["bathrooms"],
                                      Icons.bathtub_outlined, enabled),
                                  taskItemProperty(data["distance"],
                                      Icons.location_on_outlined, enabled),
                                  taskItemProperty(data["time"],
                                      Icons.flag_outlined, enabled),
                                  taskItemProperty(data["duration"],
                                      Icons.schedule_outlined, enabled)
                                ],
                              )),
                              Flexible(
                                  flex: 2,
                                  child: PriorityPill(enabled: enabled))
                            ])
                      ],
                    ))
              ],
            ),
          )));
}
