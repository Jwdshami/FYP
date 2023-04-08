import 'package:agfow/ui/Authentication/forgetPassword.dart';
import 'package:agfow/ui/Authentication/login.dart';
import 'package:agfow/ui/Authentication/signUp.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late String _email;
  late String _securityAnswer;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,



          leading:Padding(
            padding: EdgeInsets.only(left:10,top: 0.8),
            child: ElevatedButton(


              onPressed: () {
                // Add your button click logic here
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  ForgetPassword()));
              },
              style: ElevatedButton.styleFrom(

                shape: const CircleBorder(
                ),
                padding: EdgeInsets.all(10 ),
                primary: Colors.green.withGreen(125),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.white, size: 26,),
            ),
          ),




        ),

        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,

            padding: EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  Form(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(

                              child: Text(
                                'ResetPassword',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green.withGreen(125)
                                ),
                              ),
                            ),




                            SizedBox(height: 50),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Enter your Number',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                setState(() {
                                  _email = value;
                                });
                              },
                            ),
                            SizedBox(height: 30),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Security Answer',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _securityAnswer = value;
                                });
                              },
                            ),

                            const SizedBox(
                              height: 30,
                            ),
                            const TextField(

                              decoration: InputDecoration(


                                hintText: "  Enter your Password",


                                hintStyle: TextStyle( color: Colors.grey),


                                suffixIcon: IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.grey,
                                    )),


                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 2.0),


                                ),

                              ),
















                            ),
                            SizedBox(height: 50),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(



                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Login()));
                                },
                                child: const Text(

                                  "Register",
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                                ),

                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),

                                    primary: Colors.green.withGreen(125)
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(
                                width: double.infinity,

                                child:Row(

                                  mainAxisAlignment: MainAxisAlignment.center,


                                  children: [

                                    TextButton(onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  SignUp()));
                                    }, child: const Text.rich(
                                        TextSpan(
                                            text:"Don't have an account?",
                                            style:  TextStyle(fontSize: 18,color: Colors.grey),

                                            children: const[
                                              TextSpan(
                                                  text:"Sign Up",
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
                      ),
                    ],
                  ))
                ],

              ),
            ),
          ),
        )
    );
  }
}
