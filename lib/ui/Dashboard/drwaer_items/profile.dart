
import 'package:agfow/ui/Dashboard/HomePage.dart';
import 'package:flutter/material.dart';

class AgricultureProfilePage extends StatefulWidget {
 const AgricultureProfilePage({Key? key}) : super(key: key);


  @override
 _AgricultureProfilePageState createState() => _AgricultureProfilePageState();
}

class _AgricultureProfilePageState extends State<AgricultureProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _cropController = TextEditingController();
  final List<String> _userRoles = ['Admin', 'User', 'Guest',];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));

        }, icon:const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(



        padding: const EdgeInsets.all(30.0),
        child: Column(




          children: <Widget>[
            const SizedBox(height:30.0),
            Text(
              "Profile"
              ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.green.shade500),
            ),

            const SizedBox(height: 30.0),
            Form(child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 20,),

                Row(
                  children: [
                    Icon(Icons.person_outlined,size: 28,
color: Colors.green.shade500,
                    ),
                    const SizedBox(width: 10,),
                    Text("User Name",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,fontFamily:AutofillHints.streetAddressLevel2 ,color: Colors.green.shade500)),
                  ],
                ),




                const SizedBox(height: 10,),

                TextField(
                  decoration: InputDecoration(
                    fillColor:Colors.white,
                    filled: true,



                    hintText: "  Enter your Email",


                    hintStyle: TextStyle(color: Colors.green.shade300),


                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),

                Row(
                  children: [
                    Icon(Icons.email,size: 28,
                      color: Colors.green.shade500,
                    ),
                    const SizedBox(width: 10,),
                    Text("User Name",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,fontFamily:AutofillHints.streetAddressLevel2 ,color: Colors.green.shade500)),
                  ],
                ),





const SizedBox(height: 10,),

                TextField(
                  decoration: InputDecoration(
                    fillColor:Colors.white,
                    filled: true,



                    hintText: "  Enter your Name",


                    hintStyle: TextStyle(color: Colors.green.shade300),



                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),

                Row(
                  children: [
                    Icon(Icons.person_add_rounded,size: 28,
                      color: Colors.green.shade500,
                    ),
                    const SizedBox(width: 10,),
                    Text("User Role",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,fontFamily:AutofillHints.streetAddressLevel2 ,color: Colors.green.shade500)),
                  ],
                ),




                const SizedBox(height: 10,),


                // TextField(
                //   decoration: InputDecoration(
                //     fillColor:Colors.white,
                //     filled: true,
                //
                //
                //
                //     hintText: "  Enter your Email",
                //
                //
                //     hintStyle: TextStyle(color: Colors.green.shade300),
                //
                //
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(color: Colors.green ),
                //     ),
                //   ),
                // ),


                DropdownButtonFormField(
                  decoration: const InputDecoration(


                    hintText: "User Role",


                    hintStyle: TextStyle(color: Colors.green,),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )




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

                const SizedBox(height: 40,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(




                    onPressed: (){}
                    ,
                    child: const Text(
                      "Add",style:TextStyle(fontSize: 18),
                    ),

                    style: ElevatedButton.styleFrom(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),

                        ),  backgroundColor: Colors.green,
                    ),

                  ),
                ),
              ],

            )),






          ],
        ),
      ),
    );
  }
}
