import 'package:agfow/constraits/sizes.dart';
import 'package:agfow/ui/Authentication/forgetPassword.dart';
import 'package:agfow/ui/Authentication/signUp.dart';

import 'package:agfow/ui/Dashboard/HomePage.dart';


import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
debugShowCheckedModeBanner: false,

        home: Scaffold(



            body:  SingleChildScrollView(




                  child: Container(

                    width: size.width,
                    height: size.height,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/pic1.jpeg",
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


                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [




                        PreferredSize(
                          preferredSize: const Size.fromHeight(0), // Set the height to 0 to make the AppBar invisible
                          child: AppBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              leading:ElevatedButton(


                                onPressed: () {
                                  // Add your button click logic here
                                },
                                style: ElevatedButton.styleFrom(

                                  shape: const CircleBorder(
                                  ),
                                  padding: const EdgeInsets.all(10 ),
                                  primary: Colors.green.withGreen(125),
                                ),
                                child: const Icon(Icons.arrow_back, color: Colors.white, size: 26,),
                              )
                          ),
                        ),






                        //Section1

                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/images/agfowlogo.png",
                          height: size.height * 0.2,
                        ),
                        const Text(
                          " Login to your account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
//End of the Section 1

                        //Section 2

                        Form(
                            child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [









                                    const TextField(
                                      decoration: InputDecoration(
                                        fillColor:Colors.white,
                                        filled: true,

                                        prefix: Icon(
                                          Icons.person,
                                          color: Colors.grey
                                          ,
                                        ),

                                        hintText: "  Enter your Email",


                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black,width: 2.0),

                                        ),

                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),

                                    const TextField(
                                      decoration: InputDecoration(
                                        fillColor:Colors.white,
                                        filled: true,

                                        prefix: Icon(
                                          Icons.person,
                                          color: Colors.grey
                                          ,
                                        ),

                                        hintText: "  Enter your Email",


                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black,width: 2.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green),
                                        ),
                                      ),
                                    ),


                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                          onPressed: () {

                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const ForgetPassword()));
                                          },
                                          child: const Text(
                                            "Forget Password?",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 18),
                                          )),
                                    ),
                                    const SizedBox(
                                        height: 80
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(



                                        onPressed: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const HomePage()));
                                        },
                                        child: const Text(
                                          "Login",
                                        ),

                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),

                                            primary: Colors.green.withGreen(125)
                                        ),
                                      ),
                                    ),



                                    SizedBox(
                                        width: double.infinity,

                                        child:Row(

                                          mainAxisAlignment: MainAxisAlignment.center,


                                          children: [

                                            TextButton(onPressed: (){
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const SignUp()));
                                            }, child: const Text.rich(
                                                TextSpan(
                                                    text:"Don't have an account?",
                                                    style:  TextStyle(fontSize: 18,color: Colors.white),

                                                    children: [
                                                      TextSpan(
                                                          text:"Sign Up",
                                                          style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 100, 0, 1),)

                                                      )
                                                    ]
                                                )
                                            )
                                            )],
                                        )
                                    )


                                  ],
                                )))
                      ],
                    ),
                  ),
                ))


    );
  }
}
