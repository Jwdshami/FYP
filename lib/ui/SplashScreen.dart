import 'package:agfow/ui/getStaretd.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>const GetStarted() )));
  }
  Widget build(BuildContext context) {
    return Scaffold(
//stack is used for more than one widgets on the top of the window
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 100, 0, 1)
            ),
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.start,

            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                     Image.asset("assets/images/agfowlogo.png",color: Colors.white   ,),
                      const Padding(padding: EdgeInsets.only(top:10.0),

                      ),
                    ],
                  ),
                ) ,
              ),

            ]
            ,
          )
        ],

      ),

    );
  }
}


