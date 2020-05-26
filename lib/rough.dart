//  Positioned(
//             //^^^This widget is used here to control the position of the clidren widget of stack--//

//             left: 10, //positioning value
//             bottom: 30, //positioning value
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   width: 100,
//                   height: 40,
//                   color: Colors.green,
//                   child: Row(
//                     //^^^This Row is positioned bottom left corner of the parent stack--//
//                     children: <Widget>[
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Row(
//                             children: <Widget>[
//                               Text(
//                                 selectedProducts
//                                     .title, //<<---data through provider--<<
//                                 style: TextStyle(
//                                     fontFamily: "bestfont",
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                     fontSize: 20),
//                               ),

//                             ],
//                           ),
//                           Text(
//                             selectedProducts
//                                 .subtitle, //<<---data through provider--<<
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.white,
//                                 fontFamily: "bestfont",
//                                 fontSize: 14),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
