import 'package:agfow/constraits/sizes.dart';
import 'package:agfow/constraits/text_strings.dart';
import 'package:agfow/ui/Authentication/SignUpFirstPage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(260),
          child: AppBar(

            centerTitle: true,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(50)),
              child: Container(

                decoration: const BoxDecoration(
                    image: DecorationImage(

                        image: AssetImage("assets/images/Soil.jpeg"),
                        fit: BoxFit.fill)),


              ),

            ),

            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(50))),
            leading: Padding(
              padding: const EdgeInsets.only(left:10,top: 0.8),
              child: ElevatedButton(


                onPressed: () {
                  // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(

                  shape: const CircleBorder(
                  ),
                  padding: const EdgeInsets.all(10 ),
                  primary: Colors.white,
                ),
                child: const Icon(Icons.arrow_back, color: Colors.green, size: 26,),
              ),
            ),

          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.all(30),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(children: [
                Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green.withGreen(125),
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    hintText: " User Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    prefix: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    hintText: " Email-Id",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpFirst()));
                    },
                    child: const Text(
                      "Next Step",
                    ),
                    style: ElevatedButton.styleFrom(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Colors.green.withGreen(115)),
                  ),
                ),
              ]))
            ]),
          ),
        ),
      ),
    );
  }
}
