import 'package:agfow/ui/Authentication/login.dart';
import 'package:agfow/ui/Authentication/resetPasswoeds.dart';
import 'package:agfow/ui/Authentication/signUp.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Login()));
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
                              'Forgot Password',
                              style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green.withGreen(125)
                              ),
                            ),
                          ),

                          SizedBox(height: 20,


                          ),
                          Text(" 'The advantage of a bad memory is that one enjoys several times the same good things for the first time' ",

                            style: TextStyle(fontSize: 14,color: Colors.grey.shade600,fontWeight: FontWeight.w500 ),

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
                          SizedBox(height: 50),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(



                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  ResetPassword()));
                              },
                              child: const Text(

                                "Submit",
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
                          SizedBox(height: 20,),
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
