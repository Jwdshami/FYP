

import 'dart:ui';

import 'package:agfow/ui/Authentication/welcome.dart';

import 'package:flutter/material.dart';




class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted>  {

  int _selectedButton = 0;



  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return Scaffold(

        body: Container(



          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/wq.jpeg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.matrix([
                  0.5, 0, 0, 0, 0,
                  0, 0.5, 0, 0, 0,
                  0, 0, 0.5, 0, 0,
                  0, 0, 0, 1, 0,
                ]),
              )
          ),

          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0,sigmaY: 3.0),
            child: Center(
              child: Container(
                width:size.width,
                height:size.width,

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/agfowlogo.png"),

                      const SizedBox(height:70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,


                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: _selectedButton == 0 ? Colors.green : Colors.white,
                            ),
                            onPressed: () {

                              setState(() {
                                _selectedButton = 0;
                              });
                            },
                            child: const Text('English',style: TextStyle(fontSize: 22,),),
                          ),
                          const SizedBox(width: 35 ,),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: _selectedButton == 1 ? Colors.green : Colors.white,
                            ),
                            onPressed: () {

                              setState(() {
                                _selectedButton = 1;
                              });
                            },
                            child: const Text('اردو',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700)),
                          ),
                ]
              ),


                      const SizedBox(height: 90,),
                      GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
                          },


                          child: Container(
                            height: 50,
                            width:size.width*0.7 ,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            ),
                            child: const Center(
                              child: Text("Get Started",style:TextStyle(color: Colors.white,
                                  fontSize: 18)),
                            ),
                          )
                      ),

                    ],
                           ),

                ),

              ),
            ),

          ),

        )







    );
  }
}

