import 'package:appcars/components/model/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetalleCar extends StatelessWidget {
  const DetalleCar({ Key? key, required this.itemCar }) : super(key: key);

  //static String route = "detallecar";


  final Car itemCar;

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
            child: CardDetalle(carName: itemCar.carName ,origen: itemCar.origen ,years: itemCar.years,
                            motor: itemCar.motor,precio: itemCar.precio,aceleracion: itemCar.aceleracion,
                            maxVelocidad: itemCar.maxVelocidad,fabricante: itemCar.fabricante, 
                            urlImage: itemCar.urlImage ),
          ),

          ],
        )),
      
    );
  }
}

class CardDetalle extends StatelessWidget {
  const CardDetalle({
    Key? key, required this.urlImage, 
    required this.carName, required this.origen, 
    required this.years, required this.motor, 
    required this.precio, required this.aceleracion,
     required this.maxVelocidad, required this.fabricante,
  }) : super(key: key);

  final String urlImage, carName, origen, years, motor, precio,aceleracion,maxVelocidad,fabricante;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Expanded(
          child: Hero(
            tag: '$carName',
            child: Image.asset(urlImage)
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 0.4.sh,
          width: double.infinity,
          child: Column(
            children: [
              Center(
                child: Text(carName, style: Theme.of(context).textTheme.bodyText1),
              ),
              Container(
                height: 180,
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text('Fabricante: $fabricante', style: Theme.of(context).textTheme.headline2 ),
                          Text('Velocidad Maxima: $maxVelocidad km/h', style: Theme.of(context).textTheme.headline2,),
                          Text('Aceleración(0-100 km/h)\n	$aceleracion', style: Theme.of(context).textTheme.headline2),
                          Text('Precio: \$ $precio dólares', style: Theme.of(context).textTheme.headline2),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Origen: $origen', style: Theme.of(context).textTheme.headline2),
                        Text('Periodo: $years', style: Theme.of(context).textTheme.headline2),
                        Text('Motor: $motor', style: Theme.of(context).textTheme.headline2),
                      ],
                    )
                  ],
                ),
              )
              
            ],
          ),
        )
        
      ],
    );
  }
}