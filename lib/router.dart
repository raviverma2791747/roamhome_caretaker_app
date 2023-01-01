import 'package:flutter/material.dart';

import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/pages/detail.dart';
import 'package:roamhome_caretaker_app/pages/help.dart';
import 'package:roamhome_caretaker_app/pages/history.dart';
import 'package:roamhome_caretaker_app/pages/historyDetail.dart';
import 'package:roamhome_caretaker_app/pages/home.dart';
import 'package:roamhome_caretaker_app/pages/login.dart';
import 'package:roamhome_caretaker_app/pages/otp.dart';
import 'package:roamhome_caretaker_app/pages/profile.dart';
import 'package:roamhome_caretaker_app/pages/splash.dart';
import 'package:roamhome_caretaker_app/pages/language.dart';
import 'package:roamhome_caretaker_app/pages/about.dart';
import 'package:roamhome_caretaker_app/pages/instruction.dart';
import 'package:roamhome_caretaker_app/pages/notification.dart' as RoamHome;

/// All subsequent routes go below. */

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashRoute:
      return MaterialPageRoute(builder: (context) => const Splash());
    case languageRoute:
      var arguments = settings.arguments;
      if( arguments != null){
        return MaterialPageRoute(builder: (context) =>  Language(init: arguments));
      }
      return MaterialPageRoute(builder: (context) => const Language( ));
    case homeRoute:
      return MaterialPageRoute(builder: (context) => const Home());
    case detailRoute:
      return MaterialPageRoute(builder: (context) => const Detail());
    case loginRoute:
      return MaterialPageRoute(builder: (context) => const Login());
    case otpRoute:
      return MaterialPageRoute(builder: (context) => const Otp());
    case aboutRoute:
      return MaterialPageRoute(builder: (context) => const About());
    case historyRoute:
      return MaterialPageRoute(builder: (context) => const History());
    case instructionRoute:
      return MaterialPageRoute(builder: (context) => const Splash2());
    case profileRoute:
      return MaterialPageRoute(builder: (context) => const Profile());
    case historyDetailRoute:
      return MaterialPageRoute(builder: (context) => const HistoryDetail());
    case notificationRoute:
      return MaterialPageRoute(
          builder: (context) => const RoamHome.Notification());
    case helpRoute:
      return MaterialPageRoute(builder: (context) => const Help());
    default:
      return MaterialPageRoute(builder: (context) => const Splash());
  }
}
