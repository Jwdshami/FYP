import 'dart:ui';

import 'package:agfow/constraits/sizes.dart';
import 'package:agfow/constraits/text_strings.dart';
import 'package:agfow/ui/Authentication/login.dart';
import 'package:agfow/ui/Authentication/signUp.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
          width: size.width,
            height: size.height,
            padding: const EdgeInsets.all(tDefaultSize),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/images/pic2.jpeg",
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.matrix([
                0.5,
                0,
                0,
                0,
                0,
                0,
                0.5,
                0,
                0,
                0,
                0,
                0,
                0.5,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
              ]),
            )),



            //background image k uper waLY ELEMENTS
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/agfowlogo.png",
                ),

                const Text(
                  tOnBoardingTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                        child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                              },
                              style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  foregroundColor: Colors.green,
                                  side: const BorderSide(color: Colors.green),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: tButtonHeight,
                                      vertical: tButtonHeight)),
                              child: Text(
                                tSignUp.toUpperCase(),
                                style: const TextStyle(fontSize: 18),
                              )),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(),
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.white,
                                    side: const BorderSide(color: Colors.green),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: tButtonHeight,
                                        vertical: tButtonHeight)),
                                child: Text(
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                  tLogin.toUpperCase(),
                                )))
                      ],
                    )))
              ],
            ))));
  }
}
