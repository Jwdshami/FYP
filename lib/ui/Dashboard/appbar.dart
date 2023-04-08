


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> _languages = ['English','اردو'];
  String _selectedLanguage = 'English';
  final String title;
  final VoidCallback onProfilePressed;


   MyAppBar({super.key,
    required this.title,
    required this.onProfilePressed,




  });

  @override
  Widget build(BuildContext context) {


    return AppBar(
      backgroundColor: Colors.green,
      title: Text(title),
      actions: [

        PopupMenuButton<String>(
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'English',
              child: Row(
                children: const [

                  SizedBox(width: 8.0),
                  Text('English'),
                ],
              ),
            ),
            PopupMenuItem<String>(
              value: 'اردو',
              child: Row(
                children: const [

                  SizedBox(width: 8.0),
                  Text('اردو'),
                ],
              ),
            ),

          ],
          onSelected: (String value) {
            _selectedLanguage = value;
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.language),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}





class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'AgFow',
        onProfilePressed: () {

          Scaffold.of(context).openDrawer();
        },

      ),
      body: const Center(
        child: Text(''),
      ),
      // drawer: Drawer(
      //
      //
      //   backgroundColor: Colors.white,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     // children: [
      //     //   const UserAccountsDrawerHeader(
      //     //     decoration: BoxDecoration(
      //     //         color: Colors.green
      //     //     ),
      //     //     accountName: Text('Jawad Shami'),
      //     //     accountEmail: Text('Jawadshami55@gmail.com'),
      //     //     currentAccountPicture: CircleAvatar(
      //     //       backgroundImage: AssetImage('assets/images/me.jpg'),
      //     //     ),
      //     //   ),
      //     //
      //     //   ListTile(
      //     //     contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      //     //     leading: const Icon(Icons.person,color: Colors.green,),
      //     //     title: const Text('Profile',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1)),
      //     //     onTap: () {
      //     //
      //     //     },
      //     //   ),
      //     //   ListTile(
      //     //     contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      //     //     leading: const Icon(Icons.contact_page_rounded,color: Colors.green,),
      //     //
      //     //     title: const Text('Contact Us',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1),),
      //     //     onTap: () {
      //     //
      //     //     },
      //     //   ),
      //     //   ListTile(
      //     //     contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      //     //     leading: const Icon(Icons.settings,color: Colors.green,),
      //     //     title: const Text('Setting',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1)),
      //     //     onTap: () {
      //     //     },
      //     //   ),
      //     //   ListTile(
      //     //     contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      //     //     leading: const Icon(Icons.logout_outlined,color: Colors.green,),
      //     //
      //     //     title: const Text('Log Out',style: TextStyle(fontSize: 18,fontFamily:AutofillHints.streetAddressLevel1),),
      //     //     onTap: () {
      //     //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  const Login()));
      //     //
      //     //     },
      //     //   ),
      //     // ],
      //   ),
      // ),
    );
  }
}










