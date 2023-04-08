import 'package:agfow/ui/Authentication/login.dart';

import 'package:agfow/ui/Dashboard/appbar.dart';
import 'package:agfow/ui/Dashboard/drwaer_items/ContactUs.dart';
import 'package:agfow/ui/Dashboard/drwaer_items/profile.dart';
import 'package:agfow/ui/Dashboard/home_pages/ChatRoom.dart';
import 'package:agfow/ui/Dashboard/home_pages/community.dart';
import 'package:agfow/ui/Dashboard/home_pages/learniingPortal.dart';
import 'package:agfow/ui/Dashboard/home_pages/Dashboard.dart';

import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
  int _selectedIndex = 0;
 final List<Widget> _widgetOptions = <Widget>[
   const Dashboard(),
    const Community(),
    const LearningPortal(),
  const ChatRoom(),

  ];

final PageStorageBucket bucket=PageStorageBucket();
Widget currentScreen=const Dashboard();


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(


        backgroundColor: Colors.white,
        child: ListView(
padding: EdgeInsets.zero,
          children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green
          ),
        accountName: Text('Jawad Shami'),
        accountEmail: Text('Jawadshami55@gmail.com'),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('assets/images/me.jpg'),
        ),
        ),

            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
              leading: const Icon(Icons.person,color: Colors.green,),
              title: const Text('Profile',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1)),
              onTap: () {

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AgricultureProfilePage()));

              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
             leading: const Icon(Icons.contact_page_rounded,color: Colors.green,),

              title: const Text('Contact Us',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1),),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ContactPage() ));


              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
              leading: const Icon(Icons.settings,color: Colors.green,),
              title: const Text('Setting',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1)),
              onTap: () {
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
              leading: const Icon(Icons.logout_outlined,color: Colors.green,),

              title: const Text('Log Out',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1),),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const Login()));

              },
            ),
          ],
        ),
      ),
      appBar: MyAppBar(

        title: 'Agfow',
        onProfilePressed: () {
        },

      ),
        body:  PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),




      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomAppBar(


        color: Colors.green,
        shape: const CircularNotchedRectangle(),

    notchMargin: 10,

    child:Container(
      height: 60,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
         Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             MaterialButton(
               minWidth: 40,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 mainAxisSize: MainAxisSize.min,
                 children: [

                   Icon(Icons.dashboard, color: _selectedIndex == 0 ?Colors.amber.shade300 : Colors.white),
                   Text("Home", style: TextStyle(color: _selectedIndex == 0 ?Colors.amber.shade300 : Colors.white))
                 ],
               ),
               onPressed: () {

                 setState(() {
                   currentScreen=const Dashboard();
                   _onItemTapped(0);
                 });

               },
             ),
             MaterialButton(
               minWidth: 40,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 mainAxisSize: MainAxisSize.min,
                 children: [

                   Icon(Icons.people_alt_outlined, color: _selectedIndex == 1 ? Colors.amber.shade300 : Colors.white),
                   Text("Community", style: TextStyle(color: _selectedIndex == 1? Colors.amber.shade300 : Colors.white))
                 ],
               ),
               onPressed: () {

                 setState(() {
                   currentScreen=const Community() ;
                   _onItemTapped(1);
                 });

               },
             ),


           ],
         ),

          //Dsori side k items
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,


            children: [
              MaterialButton(
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Icon(Icons.school, color: _selectedIndex == 2 ? Colors.amber.shade300 : Colors.white),
                    Text(" Portal", style: TextStyle(color: _selectedIndex == 2 ? Colors.amber.shade300 : Colors.white),)
                  ],
                ),
                onPressed: () {

                  setState(() {
                    currentScreen=const LearningPortal();
                    _onItemTapped(2);
                  });

                },
              ),
              MaterialButton(
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Icon(Icons.chat, color: _selectedIndex == 3 ? Colors.amber.shade300 : Colors.white),
                    Text("Chat Room", style: TextStyle(color: _selectedIndex == 3 ?Colors.amber.shade300 : Colors.white))
                  ],
                ),
                onPressed: () {

                  setState(() {
                    currentScreen=const ChatRoom();
                    _onItemTapped(3);
                  });

                },
              ),


            ],
          )




          // IconButton(
          //   icon: const Icon(Icons.person),
          //   color: _selectedIndex == 3 ? Colors.amber.shade300 : Colors.white,
          //   onPressed: () {
          //     _onItemTapped(3);
          //
          //   },
          // ),
        ],
      ),
    )

    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
