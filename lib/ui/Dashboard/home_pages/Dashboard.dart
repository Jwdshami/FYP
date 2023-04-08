import 'package:agfow/ui/Dashboard/home_pages/Controller/main_controller.dart';
import 'package:agfow/ui/Dashboard/home_pages/Weather/next7days.dart';


import 'package:agfow/ui/Dashboard/home_pages/const/images.dart';
import 'package:agfow/ui/Dashboard/home_pages/const/strings.dart';
// import 'package:agfow/ui/Dashboard/home_pages/models/currentweathermodel.dart';
// import 'package:agfow/ui/Dashboard/home_pages/models/hourlyweathermodel.dart';
// import 'package:agfow/ui/Dashboard/home_pages/services/api_services.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

// ignore: depend_on_referenced_packages
// import 'package:intl/intl.dart';

main() {
  runApp(const Dashboard());

}
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());



    return Scaffold(

        body:Container(
          padding: const EdgeInsets.all(12),
          child:FutureBuilder(

              future: controller.currentWeatherData,

              builder: (BuildContext context,AsyncSnapshot snapshot) {
                if(snapshot.hasData){
                  return  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        "Faisalabad".text.fontFamily("poppins_bold").bold.size(32).letterSpacing(3).make(),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/logo/sun.png',
                              width: 80,
                              height: 80,


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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(3,(index){
                            var list =[clouds,humidity,windspeed];
                            var values=["70%","40%","3.5km/h"];
                            return Column(

                              children: [
                                Image.asset(
                                  list[index],
                                  width: 60,
                                  height: 60,
                                ).box.gray200.padding(const EdgeInsets.all(8)).roundedSM.make(),

                                10.heightBox,


                                values[ index].text.gray400.make(),
                              ],



                            );

                          }),



                        ),
                        10.heightBox,

                        const Divider(),








                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Next 5  Days weather ".text.semiBold.size(16).make(),
                            TextButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Next7days()));


                            }, child: "View All".text.make())


                          ],
                        ),










                      ],
                    ),
                  );
                }
                else{
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

              }





          )



        )



    );
  }
}

// SingleChildScrollView(
//             physics: const BouncingScrollPhysics(),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//
//                 "Faisalabad".text.fontFamily("poppins_bold").bold.size(32).letterSpacing(3).make(),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       'assets/logo/sun.png',
//                       width: 80,
//                       height: 80,
//
//
//                     ),
//
//
//                     RichText(text: const TextSpan(
//                         children: [
//                           TextSpan(
//                               text:"37$degree",
//                               style: TextStyle(
//                                 color:Vx.gray900,
//                                 fontSize: 64,
//                                 fontFamily: "poppins",
//                               )
//                           ),
//                           TextSpan(
//                               text:"Sunny",
//                               style: TextStyle(
//                                 color:Vx.gray700,
//                                 fontSize: 14,
//                                 letterSpacing: 3,
//
//                                 fontFamily: "poppins_light",
//                               )
//                           ),
//
//                         ]
//                     ) ,
//                     )
//
//                   ],
//                 ),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end    ,
//                   children: [
//                     TextButton.icon(onPressed: null,icon:const Icon(Icons.expand_less_rounded,color: Vx.gray400, ), label: "41$degree".text.make(),),
//                     TextButton.icon(onPressed: null,icon:const Icon(Icons.expand_more_rounded,color: Vx.gray400, ), label: "26$degree".text.make(),),
//                   ],
//                 ),
//                 10.heightBox,
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: List.generate(3,(index){
//                     var list =[clouds,humidity,windspeed];
//                     var values=["70%","40%","3.5km/h"];
//                     return Column(
//
//                       children: [
//                         Image.asset(
//                           list[index],
//                           width: 60,
//                           height: 60,
//                         ).box.gray200.padding(const EdgeInsets.all(8)).roundedSM.make(),
//
//                         10.heightBox,
//
//
//                         values[ index].text.gray400.make(),
//                       ],
//
//
//
//                     );
//
//                   }),
//
//
//
//                 ),
//                 10.heightBox,
//
//                 const Divider(),
//
//
//
//
//
//
//
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     "Next 5  Days weather ".text.semiBold.size(16).make(),
//                     TextButton(onPressed: (){
//                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Next7days()));
//
//
//                     }, child: "View All".text.make())
//
//
//                   ],
//                 ),
//
//
//
//
//
//
//
//
//
//
//               ],
//             ),
//           )






// child:SingleChildScrollView(
//   physics: const BouncingScrollPhysics(),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//
//
//       "Faisalabad".text.fontFamily("poppins_bold").bold.size(32).letterSpacing(3).make(),
//
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/logo/sun.png',
//             width: 80,
//             height: 80,
//
//
//           ),
//
//
//           RichText(text: const TextSpan(
//               children: [
//                 TextSpan(
//                     text:"37$degree",
//                     style: TextStyle(
//                       color:Vx.gray900,
//                       fontSize: 64,
//                       fontFamily: "poppins",
//                     )
//                 ),
//                 TextSpan(
//                     text:"Sunny",
//                     style: TextStyle(
//                       color:Vx.gray700,
//                       fontSize: 14,
//                       letterSpacing: 3,
//
//                       fontFamily: "poppins_light",
//                     )
//                 ),
//
//               ]
//           ) ,
//           )
//
//         ],
//       ),
//
//       Row(
//         mainAxisAlignment: MainAxisAlignment.end    ,
//         children: [
//           TextButton.icon(onPressed: null,icon:const Icon(Icons.expand_less_rounded,color: Vx.gray400, ), label: "41$degree".text.make(),),
//           TextButton.icon(onPressed: null,icon:const Icon(Icons.expand_more_rounded,color: Vx.gray400, ), label: "26$degree".text.make(),),
//         ],
//       ),
//       10.heightBox,
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(3,(index){
//           var list =[clouds,humidity,windspeed];
//           var values=["70%","40%","3.5km/h"];
//           return Column(
//
//             children: [
//               Image.asset(
//                 list[index],
//                 width: 60,
//                 height: 60,
//               ).box.gray200.padding(const EdgeInsets.all(8)).roundedSM.make(),
//
//               10.heightBox,
//
//
//               values[ index].text.gray400.make(),
//             ],
//
//
//
//           );
//
//         }),
//
//
//
//       ),
//       10.heightBox,
//
//       const Divider(),
//
//
//
//
//
//
//
//
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           "Next 5  Days weather ".text.semiBold.size(16).make(),
//           TextButton(onPressed: (){
//             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Next7days()));
//
//
//           }, child: "View All".text.make())
//
//
//         ],
//       ),
//
//
//
//
//
//
//
//
//
//
//     ],
//   ),
// )
// FutureBuilder(
// future: controller.currentWeatherData,
// builder: (BuildContext context, AsyncSnapshot snapshot) {
//
// if (snapshot.hasData) {
// CurrentWeatherData data=snapshot.data;
//
//
// return Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20.0),
// ),
// elevation: 5.0,
// child: Padding(
// padding: const EdgeInsets.all(30.0),
// child: SingleChildScrollView(
// physics: const BouncingScrollPhysics(),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
//
//
// "{$data.name}".text
//     .fontFamily("poppins_bold")
//     .bold
//     .size(32)
//     .letterSpacing(3)
//     .make(),
//
// Row(
// mainAxisAlignment: MainAxisAlignment
//     .spaceBetween,
// children: [
// Image.asset(
// 'assets/logo/sun.png',
// width: 80,
// height: 80,
//
//
// ),
//
//
// RichText(text: const TextSpan(
// children: [
// TextSpan(
// text: "37$degree",
// style: TextStyle(
// color: Vx.gray900,
// fontSize: 64,
// fontFamily: "poppins",
// )
// ),
// TextSpan(
// text: "Sunny",
// style: TextStyle(
// color: Vx.gray700,
// fontSize: 14,
// letterSpacing: 3,
//
// fontFamily: "poppins_light",
// )
// ),
//
// ]
// ),
// )
//
// ],
// ),
//
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextButton.icon(onPressed: null,
// icon: const Icon(
// Icons.expand_less_rounded,
// color: Vx.gray400,),
// label: "41$degree".text.make(),),
// TextButton.icon(onPressed: null,
// icon: const Icon(
// Icons.expand_more_rounded,
// color: Vx.gray400,),
// label: "26$degree".text.make(),),
// ],
// ),
// 10.heightBox,
// Row(
// mainAxisAlignment: MainAxisAlignment
//     .spaceAround,
// children: List.generate(3, (index) {
// var list = [clouds, humidity, windspeed];
// var values = ["70%", "40%", "3.5km/h"];
// return Column(
//
// children: [
// Image
//     .asset(
// list[index],
// width: 60,
// height: 60,
// )
//     .box
//     .gray200
//     .padding(const EdgeInsets.all(8))
//     .roundedSM
//     .make(),
//
// 10.heightBox,
//
//
// values[ index].text.gray400.make(),
// ],
//
//
// );
// }),
//
//
// ),
// 10.heightBox,
//
// const Divider(),
//
//
// Row(
// mainAxisAlignment: MainAxisAlignment
//     .spaceBetween,
// children: [
// "Next 5  Days weather ".text.semiBold.size(16)
//     .make(),
// TextButton(onPressed: () {
// Navigator.pushReplacement(context,
// MaterialPageRoute(
// builder: (
// context) => const Next7days()));
// }, child: "View All".text.make())
//
//
// ],
// ),
//
//
// ],
// ),
// )
// ),
// );
// }
// else{
// return const Center(
// child: CircularProgressIndicator(),
// );
// }
// }
//
//
// )