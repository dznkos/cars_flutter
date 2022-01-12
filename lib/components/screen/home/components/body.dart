import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Column(
          children: [

            Container(
              //height: 0.4.sh,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF700000), 
                    Colors.black,              
                  ],
                  stops: [
                    0.1,0.6,
                  ]
                  //transform: Gradient.linear(from, to, colors)
                ),
              ),
            child: 
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //HEADER
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  child: Container(
                    height: 60,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FA',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        width: 0.6.sw,
                        //color: Colors.blue,
                        child: Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[400]?.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 25,
                                  color: Colors.grey[500],
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Buscar auto",
                                        hintStyle: TextStyle(fontSize: 18,
                                        color: Colors.white60),
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      MaterialButton(
                        color: Colors.red[800],
                        onPressed: () {},
                        child: Text(
                          'LOG/SIGN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )),
                ),
                //BODY
                Container(
                  height: 200,
                  child: Stack(
                        children: [
                          // CAR
                          Image.asset("assets/images/1ttcoupe.png",height: 140.h,), 
                          // CAR OPACITY
                          Positioned(
                            top: -25,
                            left: -40,
                            child: Container(
                              width: 380.w ,
                              height: 190.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  opacity: 0.25,
                                  image: AssetImage("assets/images/1ttcoupe.png",)
                              ),
                            ),
                            ),
                          ),
                          // CAR GALLERY
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 100,
                            alignment: Alignment.bottomRight,
                            child: Text('Car Gallery',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700
                              ),)),
                        
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                              margin: EdgeInsets.all(10),                                                            
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Ferrari',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('car',style: TextStyle(
                                      fontSize: 18,                                        
                                      color: Colors.white60
                                    ),),
                                ],
                              )),
                          ),
                        
                        ],
                  ),
                ),


                
              ],
            ),

          ),

            // MID

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF700000), 
                    Colors.black,                                                          
                  ],
                  stops: [
                    0.1,0.9,
                  ]
                ),
              ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                  Container(
                  height: 180,
                  child: Stack(
                        children: [
                          // CAR
                          Positioned(
                            right:-50,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(pi),
                              child: Image.asset("assets/images/2audi_r8.png",height: 140.h,))), 
                          // CAR OPACITY
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text('let us know exactly\nwhat you are looking for?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white60,
                                fontWeight: FontWeight.w300
                              ),)),
                  ],
                  ))
              ]
            )
            ),

            // catalogo
             Expanded(
               child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [                           
                      Color(0xFF700000), 
                      Color(0xFF700000),                                        
                      Color(0xFF260000)                                                                               
                    ],
                    stops: [
                      0.3,
                      0.3,
                      0.8,
                    ]
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,                        
                        children: [
                          Text('FIND YOUR NEXT CAR AT CAR GALLERY',
                          style: TextStyle(fontSize: 18, color: Colors.white60),),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 140,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/aventator.png",
                                  height: 60,),
                                  SizedBox(height: 5,),
                                  Text('\$417,826', style: Theme.of(context).textTheme.headline1)
                                ],
                              ),
                            ),
                            Container(
                              width: 140,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/mase1.png",
                                  height: 60,),
                                  SizedBox(height: 5,),
                                  Text('\$74,390', style: Theme.of(context).textTheme.headline1)
                                ],
                              ),
                            ),
                            Container(
                              width: 140,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/etron.png",
                                  height: 60,),
                                  SizedBox(height: 5,),
                                  Text('\$65,900', style: Theme.of(context).textTheme.headline1)
                                ],
                              ),                              
                            ),
                            Container(
                              width: 140,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/connel.png",
                                  height: 60,),
                                  SizedBox(height: 5,),
                                  Text('\$32,700', style: Theme.of(context).textTheme.headline1)
                                ],
                              ),
                            ),
                            Container(
                              width: 140,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/bugattiveyron.png",
                                  height: 60,),
                                  SizedBox(height: 5,),
                                  Text('\$1.9 Million', style: Theme.of(context).textTheme.headline1)
                                ],
                              ),
                            ),
                            Container(
                              //color: Colors.blue,
                              width: 140,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/mase2.png",
                                  height: 60,),
                                  SizedBox(height: 5,),
                                  Text('\$77,695', style: Theme.of(context).textTheme.headline1,)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                )
                         
               ),
             )

            
          ],
        )
    );
  }
}
