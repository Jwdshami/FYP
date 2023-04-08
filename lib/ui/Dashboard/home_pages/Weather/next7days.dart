
import 'package:agfow/ui/Dashboard/HomePage.dart';
import 'package:agfow/ui/Dashboard/home_pages/Dashboard.dart';
import 'package:agfow/ui/Dashboard/home_pages/const/images.dart';
import 'package:agfow/ui/Dashboard/home_pages/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';


class Next7days extends StatelessWidget {
  const Next7days({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Weather"),
          backgroundColor: const Color(0xFF228B22),
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()));


              }, icon: const Icon(Icons.arrow_back)),
        ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  Container(

              padding: const EdgeInsets.all(20),
              child:SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    "Faisalabad".text.fontFamily("poppins_bold").bold.size(28).letterSpacing(3).make(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo/sun.png',
                          width: 60,
                          height: 60,


                        ),


                        RichText(text: const TextSpan(
                            children: [
                              TextSpan(
                                  text:"37$degree",
                                  style: TextStyle(
                                    color:Vx.gray900,
                                    fontSize: 64,
                                    fontFamily: "poppins",
                                  )
                              ),
                              TextSpan(
                                  text:"Sunny",
                                  style: TextStyle(
                                    color:Vx.gray700,
                                    fontSize: 14,
                                    letterSpacing: 3,

                                    fontFamily: "poppins_light",
                                  )
                              ),

                            ]
                        ) ,
                        )

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end    ,
                      children: [
                        TextButton.icon(onPressed: null,icon:const Icon(Icons.expand_less_rounded,color: Vx.gray400, ), label: "41$degree".text.make(),),
                        TextButton.icon(onPressed: null,icon:const Icon(Icons.expand_more_rounded,color: Vx.gray400, ), label: "26$degree".text.make(),),
                      ],
                    ),
                    10.heightBox,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: List.generate(3,(index){
                    //     var list =[clouds,humidity,windspeed];
                    //     var values=["70%","40%","3.5km/h"];
                    //     return Column(
                    //
                    //       children: [
                    //         Image.asset(
                    //           list[index],
                    //           width: 40,
                    //           height: 40,
                    //         ).box.gray200.padding(const EdgeInsets.all(8)).roundedSM.make(),
                    //
                    //         10.heightBox,
                    //
                    //
                    //         values[ index].text.gray400.make(),
                    //       ],
                    //
                    //
                    //
                    //     );
                    //
                    //
                    //   }),
                    //
                    //
                    //
                    // ),
                    const Divider(),
                    10.heightBox,


                    // FOr next seven days weather
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Next Few Hours  ".text.semiBold.size(16).make(),



                      ],
                    ),
                    const Divider(),
                    15.heightBox,


 SizedBox(
                        height: 130,
                        child:  ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount:5,
                            itemBuilder:(BuildContext context,int index){

                              return  Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(right: 4) ,
                                decoration: BoxDecoration(
                                  color:Vx.blue100,
                                  borderRadius: BorderRadius.circular(12),

                                ),
                                child: Column(
                                  children: [
                                    "${index+1} AM".text.bold.gray600.make(),
                                    Image.asset("assets/logo/badal.png",width: 60,),
                                    "38$degree".text.gray700.make(),

                                  ],
                                ),
                              );
                            })

                    ),






                    // FOr next seven days weather
                    15.heightBox,

                    // FOr next seven days weather
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Next 5 Days weather ".text.semiBold.size(16).make(),



                      ],
                    ),


                    const Divider(

                    ),
                    10.heightBox,






                    SizedBox(
                        height: 130,
                        child:  ListView.builder(
                          physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount:5,
                            itemBuilder:(BuildContext context,int index){

                              return  Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(right: 4) ,
                                decoration: BoxDecoration(
                                  color:Vx.gray400,
                                  borderRadius: BorderRadius.circular(12),

                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    "Monday".text.bold.gray600.make(),
                                    Image.asset("assets/logo/sun.png",width: 60,),
                                    "38$degree".text.gray700.size(16).make(),

                                  ],
                                ),
                              );
                            })

                    ),
                    10.heightBox,




                    // FOr next seven days weather
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     "Next 7 Days weather ".text.semiBold.size(16).make(),
                    //     TextButton(onPressed: (){
                    //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Next7days()));
                    //
                    //
                    //     }, child: "View All".text.make())
                    //
                    //
                    //   ],
                    // ),










                  ],
                ),
              )
          ),
        ),


      )
    );
  }
}
