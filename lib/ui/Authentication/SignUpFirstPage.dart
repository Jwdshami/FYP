import 'package:agfow/ui/Authentication/login.dart';
import 'package:agfow/ui/Dashboard/HomePage.dart';
import 'package:flutter/material.dart';

class SignUpFirst extends StatelessWidget {
  SignUpFirst({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  final List<String> _userRoles = ['Admin', 'User', 'Guest'];
  final List<String> _securityQuestion = ['Mother Name', 'Pet Name', 'First Car'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,



          leading:Padding(
            padding: const EdgeInsets.only(left:10,top: 0.8),
            child: ElevatedButton(


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
            ),
          ),




        ),

        body:SingleChildScrollView(
        child:Container(
          height: size.height,
            width: size.width,

            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  Form(
                      key: _formKey,
                      child:Container(

                      child:Center(


                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            const SizedBox(height: 10,),

                            Text("Sign Up",
                              textAlign:
                            TextAlign.center,
                              style: TextStyle(color: Colors.green.withGreen(125),
                                fontSize: 40,fontWeight:FontWeight.w500,),),
                            const SizedBox(
                              height: 30,

                            ),

                            TextFormField(

                              decoration: const InputDecoration(labelText: 'Password',


                                hintText: " User Name",


                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 2.0,

                                  ),


                                ),
                              ),

                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 25,

                            ),

                            DropdownButtonFormField(
                              decoration: const InputDecoration(labelText: 'Security Question',


                                hintText: " Security Question ",


                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 2.0,

                                  ),


                                ),
                              ),
                              items: _securityQuestion.map((role) {
                                return DropdownMenuItem(
                                  value: role,
                                  child: Text(role),
                                );
                              }).toList(),
                              onChanged: (value) {},
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select a Security Question';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 25,

                            ),
                            TextFormField(
                                decoration: const InputDecoration(labelText: 'Security Answer',


                                  hintText: " Security Answer",


                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,width: 2.0,

                                    ),


                                  ),
                                ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a security answer';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 25,

                            ),
                            DropdownButtonFormField(
                              decoration: const InputDecoration(labelText: 'User Role',


                                hintText: " Security User Role",


                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 2.0,

                                  ),


                                ),
                              ),
                              items: _userRoles.map((role) {
                                return DropdownMenuItem(
                                  value: role,
                                  child: Text(role),
                                );
                              }).toList(),
                              onChanged: (value) {},
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select a user role';
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 16),
                            const SizedBox(
                              height: 25,

                            ),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(



                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const HomePage()));
                                },
                                child: const Text(

                                  "Register",
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                                ),

                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),

                                    primary: Colors.green
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),

                            SizedBox(
                                width: double.infinity,

                                child:Row(

                                  mainAxisAlignment: MainAxisAlignment.center,


                                  children: [

                                    TextButton(onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const Login()));
                                    }, child: const Text.rich(
                                        TextSpan(
                                            text:"Already have an account?",
                                            style:  TextStyle(fontSize: 18,color: Colors.grey),

                                            children: const[
                                              TextSpan(
                                                  text:"Sign In",
                                                  style: TextStyle(fontSize: 20,color: Colors.green)

                                              )
                                            ]
                                        )
                                    )
                                    )],
                                )
                            )



                          ],


                        ),

                      )
                  )
                  )
                ],

              ),
            ),
          ),


    ))
    );
  }


}

