import 'package:flutter/material.dart';
import 'package:roamhome_caretaker_app/constants/router_constants.dart';
import 'package:roamhome_caretaker_app/constants/theme_constants.dart';
import 'package:roamhome_caretaker_app/pages/otp.dart';
import 'package:roamhome_caretaker_app/components/flat_button.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: primaryBgColor,
                body: SafeArea(
                    top: true,
                    child:Container(
                    margin: const EdgeInsets.symmetric(horizontal: 23,vertical: 30),
                    child: Column(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Enter your phone number to login to your account. An OTP will be sent to your number.",
                              style: TextStyle(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                                maxLength: 10,
                                autofocus:true,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                  counterText: "",
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ))
                          ],
                        )),
                        flatButton("Continue",(){
                          Navigator.of(context).pushNamed(otpRoute);
                        })
                      ],
                    ))));
  }
}
