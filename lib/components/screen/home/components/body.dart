import 'dart:math';
import 'dart:ui';

import 'package:appcars/components/model/car.dart';
import 'package:appcars/components/screen/detalle/detalle_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    List<Car> listCars = [
      Car(carName: 'Aventator' ,origen: 'Italia',years: '2009-2012',
          motor: 'V8' , precio: '417,826' ,aceleracion: '2,8 s',
          maxVelocidad: '350', fabricante: 'Lamborghini', urlImage: 'assets/images/aventator.png',),
      Car(carName: 'Veyron' ,origen: 'Francia',years: '2005-2011',
          motor: 'W16' , precio: '1,5 Mill.' ,aceleracion: '2,5 s',
          maxVelocidad: '407', fabricante: 'Bugatti', urlImage: 'assets/images/bugattiveyron.png',),

      Car(carName: 'Etron' ,origen: 'Alemania',years: '2009',
          motor: 'Eléctrico' , precio: '995,100' ,aceleracion: '4,8 s',
          maxVelocidad: '200', fabricante: 'Audi', urlImage: 'assets/images/etron.png',),

      Car(carName: 'Gallardo' ,origen: 'Italia',years: '2003-2013',
          motor: 'V10' , precio: '350,000' ,aceleracion: '3,4 s',
          maxVelocidad: '325', fabricante: 'Lamborghini', urlImage: 'assets/images/gallardo.png',),

      Car(carName: 'QuattroporteVI' ,origen: 'Italia',years: '2013',
          motor: 'V6' , precio: '127,700' ,aceleracion: '5,1 s',
          maxVelocidad: '285', fabricante: 'Maserati', urlImage: 'assets/images/mase1.png',),

      Car(carName: 'MC20' ,origen: 'Italia',years: '2020',
          motor: 'V6' , precio: '250,000' ,aceleracion: '2,9 s',
          maxVelocidad: '325', fabricante: 'Maserati', urlImage: 'assets/images/mase2.png',),
    ];

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
                    Color(0xFF770e0e), 
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
                        color: Color(0xFF770e0e),
                        onPressed: () {

                        },
                        splashColor: Colors.black,
                        highlightColor: Colors.transparent,
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
                    Color(0xFF770e0e), 
                    Colors.black,                                                          
                  ],
                  stops: [
                    0.1,0.9,
                  ]
                ),
              ),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            
                    Container(
                      width: 1.sw,
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
                    )),
                    Container(
                      width: 1.sw,
                      height: 180,
                      child: Stack(
                          children: [
                            // CAR OPACITY
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 100,
                              alignment: Alignment.bottomRight,
                              child: Text('let us know exactly\nwhat you are looking for?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300
                                ),)),
                            // CAR
                            Positioned(
                              top: 20,
                              left:1,
                              child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(pi),
                                child: Image.asset("assets/images/etron.png",height: 100.h,))), 
                            
                    ],
                    )),
                    Container(
                      width: 1.sw,
                      height: 180,
                      child: Stack(
                          children: [
                            // CAR
                            Positioned(
                              top: 20,
                              right:5,
                              child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(pi),
                                child: Image.asset("assets/images/mase2.png",height: 120.h,))), 
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
                    )),
                ]
              ),
            )
            ),

            // Catalogo
             Expanded(
               child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [                           
                      Color(0xFF770e0e), 
                      Color(0xFF770e0e),                                        
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
                          children: listCars.map<Widget>((car) {
                            return CardCar(itemCar: car);

                          }).toList()
                            //CardCar(),
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

class CardCar extends StatelessWidget {
  const CardCar({
    Key? key, required this.itemCar,
  }) : super(key: key);

  final Car itemCar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetalleCar(itemCar: itemCar,)));
        },
        child: Column(
          children: [
            Hero(
              tag: '${itemCar.carName}',
              child: Image.asset(itemCar.urlImage,
                      height: 60,)
            ),
            SizedBox(height: 5,),
            Text('${itemCar.carName}', style: Theme.of(context).textTheme.headline1)
          ],
        ),
      ),
    );
  }
}
