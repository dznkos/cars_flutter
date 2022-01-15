import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetalleCar extends StatelessWidget {
  const DetalleCar({ Key? key }) : super(key: key);

  static String route = "detallecar";

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [

            Container(                
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [    
                      
                      Color(0xFF0b135b),                         
                      Color(0xFF0e0f0f),                                                                             
                    ],
                    stops: [
                      0.1,
                      0.5,
                    ]
                  ),
                ),
              
              ),
            Positioned(
              top: -120,
              right: -90,
              child: Container(                
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [            
                      Color(0xFF541414),                                        
                      Color(0xFFed4b4b)                                                                               
                    ],
                    stops: [
                      0.1,
                      0.8,
                    ]
                  ),
                ),
              
              ),
            ),  
            
            
            Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            child: Column(
              children: [
                Expanded(
                  child: Hero(
                    tag: 'car',
                    child: Image.asset("assets/images/aventator.png")
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 0.4.sh,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Center(
                        child: Text('Lamborghini Aventador', style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Container(height: 150,
                        margin: EdgeInsets.only(top:20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Text('Fabricante: Lamborghini', style: Theme.of(context).textTheme.headline2 ),
                                  Text('Velocidad Maxima: 350 km/h', style: Theme.of(context).textTheme.headline2,),
                                  Text('Aceleración	0-100 km/h (62 mph): 2,8 s', style: Theme.of(context).textTheme.headline2),
                                  Text('Precio : 417,826 dólares', style: Theme.of(context).textTheme.headline2),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Origen: Italia', style: Theme.of(context).textTheme.headline2),
                                Text('Periodo: 2011-2021', style: Theme.of(context).textTheme.headline2),
                                Text('Motor: V12', style: Theme.of(context).textTheme.headline2),
                              ],
                            )
                          ],
                        ),
                      )
                      
                    ],
                  ),
                )
                
              ],
            ),
          ),

          ],
        )),
      
    );
  }
}