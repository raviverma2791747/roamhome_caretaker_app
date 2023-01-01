import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final Future<SharedPreferences> _keyStore = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, instructionRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: primaryBgColor,
            body: SafeArea(
                top: true,
                child:Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 60,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                const Text("Roamhome",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: splashTextColor))
              ],
            ))));
  }
}
