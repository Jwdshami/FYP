import 'package:agfow/ui/Dashboard/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ContactPage extends StatelessWidget {

  final String facebookUrl = "https://www.facebook.com/company";
  final String twitterUrl = "https://www.twitter.com/company";
  final String instagramUrl = "https://www.instagram.com/company";

  void launchWhatsapp({@required number,@required message})async{
    final String url="whatsapp://send?phone=$number&text=$message";

    await canLaunch(url) ? launch(url):print("can't open the whatsapp");
  }

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
       backgroundColor: const Color(0xFF228B22),
        leading: IconButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const HomePage()));


        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: SizedBox(
          width: size.width,
          height: size.height,
        child:Column(

         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,


                children: [
                  const SizedBox(height: 30,),
                  const Text(
                    'Get in touch with us!',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Color(0xFF228B22)),
                  ),
                  const SizedBox(height: 18.0),
                  const Text(
                    'If you have any questions or concerns, please contact us .',textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0,fontStyle: FontStyle.normal,color:Colors.grey ),
                  ),
                  const SizedBox(height: 32.0),
                  SizedBox(
                    height: 40,
                    width: double.infinity,

                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),

                         primary: Colors.green.withGreen(125)
                     ),
                      child: const Text('WhatsApp Us',style: TextStyle(fontSize: 16),),
                      onPressed: (){
                        launchWhatsapp(number: "030544422868",message: "hello");
                      },
                    ),
                  ),

                  const SizedBox(height: 30),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),

                          primary: Colors.green.withGreen(125)
                      ),
                      child: const Text('Call Us',style: TextStyle(fontSize: 16),),
                      onPressed: ()async {

                        final Uri url= Uri(
                          scheme:'tel',
                          path:'03054422868',

                        );


               if(await canLaunchUrl(url)){

                  await launchUrl(url);

                        }else{
                       print("cannot launch this url");
    }

                      },
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  const Text(
                    'Connect with us on social media:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook,color: Colors.blue,),
                        onPressed: () => launch(facebookUrl),
                      ),
                      IconButton(
                        icon: const Icon( FontAwesomeIcons.instagram,
                          color: Color.fromRGBO(131, 58, 180, 1),
                          ),
                        onPressed: () => launch(instagramUrl),
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.twitter,
                        color: Colors.blue,),
                        onPressed: () => launch(twitterUrl),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      )


    );
  }
}
